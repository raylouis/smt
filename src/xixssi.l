!----------------------------------------------------------------------------
!   Name:       xixssi.l
!   Title:      Dialog for Xitami SSI WSX agent
!   Package:    Xitami
!
!   Written:    1998/11/20  iMatix Xitami team <xitami@imatix.com>
!   Revised:    1999/08/28
!
!   Copyright:  Copyright (c) 1991-2000 iMatix Corporation
!   License:    This is free software; you can redistribute it and/or modify
!               it under the terms of the SMT License Agreement as provided
!               in the file LICENSE.TXT.  This software is distributed in
!               the hope that it will be useful, but without any warranty.
!----------------------------------------------------------------------------
-schema=smtschm.c
-idle

After-Init:
!Master WSX thread to get WSX request and create file thread
    (--) Master                             -> Master-Thread
          + 
!Master thread for main SSI File
    (--) File                               -> After-Get-Command
          + Make-Config-Table
          + Open-Ssi-File
          + Read-Ssi-File
          + Get-All-Ssi-Command
    (--) Error                              -> End-Thread
          + Return-Wsx-Error
          + Check-Thread-Type
!Thread to execute SSI command
    (--) Command                            -> Type-Of-Command
          + Get-Command-Type
!Thread to process SSI include
    (--) Include                            -> After-Get-Include-Command
          + Get-File-Name-From-Uri
          + Open-Ssi-File
          + Read-Ssi-File
          + Get-All-Ssi-Command

Master-Thread:
    (--) Request                            -> Master-Thread
          + Get-Wsx-Request
          + Create-Master-File-Thread

!------------ FILE THREAD -----------------------------------------------

After-Get-Command:
    (--) Ok                                 -> Wait-End-Of-Command
          + Execute-All-Config-Command
          + Create-Command-Thread
          + Set-Time-Out
    (--) No-Command                         -> End-Thread
          + Set-No-Command-Return-File
          + Send-Wsx-Response
          + Check-Thread-Type

!When a command thread ends, it sends an 'end of command' message

Wait-End-Of-Command:
    (--) End-Of-Command                     -> End-Of-Command
          + Increment-Command-End-Count
          + Check-If-All-Command-Complete
    (--) Time-Out                           -> End-Thread
          + Signal-Timeout
          + Make-Return-File
          + Send-Wsx-Response
          + Check-Thread-Type

End-Of-Command:
    (--) Ok                                 -> End-Thread
          + Flush-Time-Out
          + Make-Return-File
          + Send-Wsx-Response
          + Check-Thread-Type
    (--) More                               -> Wait-End-Of-Command
          + 

!----------------- COMMAND THREAD --------------------------------------

Type-Of-Command:
    (--) Echo                               -> Replace-Variable-Value
          + Get-Variable-Value
    (--) Fsize                              -> End-Thread
          + Get-File-Name-From-Uri
          + Store-File-Size-In-Result
          + Check-Thread-Type
    (--) Flastmod                           -> End-Thread
          + Get-File-Name-From-Uri
          + Store-Last-Mod-Date-In-Result
          + Check-Thread-Type
    (--) Exec                               -> Have-Type-Of-Cgi
          + Get-File-Name-From-Uri
          + Check-File-Or-Directory

Replace-Variable-Value:
    (--) Doc-Name                           -> End-Thread
          + Store-Document-Name-In-Result
          + Check-Thread-Type
    (--) Doc-Uri                            -> End-Thread
          + Store-Document-Uri-In-Result
          + Check-Thread-Type
    (--) Date-Gmt                           -> End-Thread
          + Store-Date-Gmt-In-Result
          + Check-Thread-Type
    (--) Date-Local                         -> End-Thread
          + Store-Date-Local-In-Result
          + Check-Thread-Type
    (--) Last-Modified                      -> End-Thread
          + Store-Current-Last-Mod-Date-In-Result
          + Check-Thread-Type
    (--) Environ                            -> End-Thread
          + Store-Environ-Value-In-Result
          + Check-Thread-Type
    (--) Query-String                       -> End-Thread
          + Store-Query-String-In-Result
          + Check-Thread-Type

Have-Type-Of-Cgi:
    (--) Executable                         -> Before-Runnig-Cgi
          + Check-If-Cgi-Protected

Before-Runnig-Cgi:
    (--) Ok                                 -> Wait-For-Cgi
          + Create-Cgi-Process
          + Wait-Process-End

Wait-For-Cgi:
    (--) Time-Out                           -> Wait-For-Cgi
          + Wait-Process-End
    (--) Finished                           -> End-Thread
          + Close-Child-Process
          + Store-Cgi-Output-In-Result
          + Check-Thread-Type
    (--) Error                              -> End-Thread
          + Close-Child-Process
          + Store-Ssi-Error-In-Result
          + Check-Thread-Type
    (--) Redirect                           -> End-Thread
          + Close-Child-Process
          + Store-Ssi-Error-In-Result
          + Check-Thread-Type

!----------- INCLUDE THREAD ----------------------------------------------
After-Get-Include-Command:
    (--) Ok                                 -> Wait-End-Of-Include-Command
          + Execute-All-Config-Command
          + Create-Command-Thread
          + Set-Time-Out
    (--) No-Command                         -> End-Thread
          + Set-No-Command-Include-File
          + Check-Thread-Type

Wait-End-Of-Include-Command:
    (--) End-Of-Command                     -> End-Of-Include-Command
          + Increment-Command-End-Count
          + Check-If-All-Command-Complete
    (--) Time-Out                           -> End-Thread
          + Signal-Timeout
          + Make-Include-Return-File
          + Send-Wsx-Response
          + Check-Thread-Type

End-Of-Include-Command:
    (--) Ok                                 -> End-Thread
          + Flush-Time-Out
          + Make-Return-File
          + Make-Include-Return-File
          + Check-Thread-Type
    (--) More                               -> Wait-End-Of-Include-Command
          + 

Defaults:
    (--) Exception                          -> End-Thread
          + Check-Thread-Type
    (--) Shutdown                           -> End-Thread
          + Check-Thread-Type
    (--) Fatal                              -> 
          + Free-All-Resources
          + Terminate-The-Thread
    (--) Command-Error                      -> End-Thread
          + Store-Ssi-Error-In-Result
          + Check-Thread-Type
    (--) Error                              -> End-Thread
          + Store-Ssi-Error-In-Result
          + Signal-Ssi-Error
          + Return-Wsx-Error
          + Check-Thread-Type

End-Thread:
    (--) Master                             -> 
          + Terminate-The-Thread
    (--) File                               -> 
          + Free-All-Resources
          + Terminate-The-Thread
    (--) Command                            -> 
          + Signal-End-Of-Command
          + Terminate-The-Thread
    (--) Include                            -> 
          + Signal-End-Of-Command
          + Free-Include-Resource
          + Terminate-The-Thread
