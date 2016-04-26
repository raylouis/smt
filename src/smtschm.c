!-------------------------------------------------------------------<Prolog>-
!   Name:       smtschm.c
!   Title:      Libero/SMT C schema for SMT programs
!   Package:    Libero/SMT Kernel
!
!   Written:    iMatix SMT kernel team <smt@imatix.com>
!   Revised:    1999/01/06
!
!   Synopsis:   Generates two include files with extensions '.d' and '.i'.
!               See SMT documentation for detailed instructions.
!
!   Copyright:  Copyright (c) 1991-2000 iMatix Corporation
!   License:    This is free software; you can redistribute it and/or modify
!               it under the terms of the SMT License Agreement as provided
!               in the file LICENSE.TXT.  This software is distributed in
!               the hope that it will be useful, but without any warranty.
!------------------------------------------------------------------</Prolog>-

:if module "Dialog-Call"
:  if not event "Return"
:     echo "lr E: you must define the 'Return' event"
:     exit 1
:  endif
:  declare int $stack_max = 20
:else
:  declare int $stack_max = 0
:endif
:if not exist $source.c
:echo "lr I: creating skeleton program $source.c..."
:output $source.c
/*===========================================================================*
 *                                                                           *
 *  $source.c   description...                                               *
 *                                                                           *
 *  Written:    $date       $author                                          *
 *  Revised:    $date                                                        *
 *                                                                           *
 *  Skeleton generated by LIBERO $version on $fulldate, $time.               *
 *===========================================================================*/

#include "sfl.h"                        /*  SFL library header file          */
#include "smtlib.h"                     /*  SMT kernel functions             */


/*- Definitions -------------------------------------------------------------*/

#define AGENT_NAME   "$source"          /*  Our public name                  */

typedef struct                          /*  Thread context block:            */
{
    int handle;                         /*    Handle for i/o                 */
} TCB;


/*- Function prototypes -----------------------------------------------------*/


/*- Global variables used in this source file only --------------------------*/

static TCB
    *tcb;                               /*  Address thread context block     */


#include "$dialog.d"                    /*  Include dialog data              */

/********************   INITIALISE AGENT - ENTRY POINT   *********************/

int $source\_init (void)
{
    AGENT *agent;                       /*  Handle for our agent             */
#   include "$dialog.i"                 /*  Include dialog interpreter       */

    /*  Change any of the agent properties that you need to                  */
    agent-> router      = FALSE;        /*  FALSE = default                  */
    agent-> max_threads = 0;            /*  0 = default                      */

    /*                      Method name     Event value      Priority        */
    /*  Shutdown event comes from Kernel                                     */
    method_declare (agent, "SHUTDOWN",      shutdown_event,  SMT_PRIORITY_MAX);

    /*  Public methods supported by this agent                               */
    method_declare (agent, "XXX",           ok_event,        0);

    /*  Signal okay to caller that we initialised okay                       */
    return (0);
}


/*************************   INITIALISE THE THREAD   *************************/

MODULE $"initialise_the_thread" (THREAD *thread)
{
    tcb = thread-> tcb;                 /*  Point to thread's context        */
    tcb-> handle = 0;                   /*  For example...                   */
    $"the_next_event" = $"ok_event";
}


/*************************   TERMINATE THE THREAD   **************************/

MODULE $"terminate_the_thread" (THREAD *thread)
{
    tcb = thread-> tcb;                 /*  Point to thread's context        */
    $"the_next_event" = $"terminate_event";
}


:close
:endif

:output $dialog.d
:echo "lr I: building $dialog.d..."
/*---------------------------------------------------------------------------*
 *  $dialog.d - LIBERO dialog data definitions for $source.c.                *
 *  Generated by LIBERO $version on $fulldate, $time.                        *
 *  Schema file used: $schema.                                               *
 *---------------------------------------------------------------------------*/

/*- Symbolic constants and event numbers ------------------------------------*/

:if check
#define _LR_STOP                        0xFFFFL
#define _LR_NULL_EVENT                  -2
#define _LR_NULL_STATE                  -1
:endif
#define $"terminate_event"              -1
:do event
#define $name                           $number
:enddo
:do state
#define _LR_STATE_$name                 $number
:enddo
:if defaults
#define _LR_defaults_state              $defaults
:endif


/*- Function prototypes and macros ------------------------------------------*/

#ifndef MODULE
#define MODULE  static void             /*  Libero dialog modules            */
#endif

MODULE $"initialise_the_thread"     (THREAD *thread);
:do module
MODULE $name                        (THREAD *thread);
:enddo

#define $"the_next_event"           _the_next_event
#define $"the_exception_event"      _the_exception_event
#define $"the_external_event"       _the_external_event
#define $"exception_raised"         _exception_raised
#define $"io_completed"             _io_completed


/*- Static areas shared by all threads --------------------------------------*/

static word _LR_nextst [$states][$events] =
{
:do nextst
:  if $overflow = 0
    { $row }$comma
:  else
    { $row
:    do overflow
     $row
:    enddo
    }$comma
:  endif
:enddo
};

static word _LR_action [$states][$events] =
{
:set array_base=1
:do action
:  if $overflow = 0
    { $row }$comma
:  else
    { $row
:    do overflow
     $row
:    enddo
    }$comma
:  endif
:enddo
:set array_base=0
};

static word _LR_offset [] =
{
    0,
:do vector
    $offset$comma
:enddo
};

static word _LR_vector [] =
{
:do vector
:  if "$row" = ""
    _LR_STOP$comma
:  else
    $row,_LR_STOP$comma
:  endif
:enddo
};

static HOOK *_LR_module [$modules] = {
:do module
    $name$comma
:enddo
};

:if not animate
#if (defined (DEBUG))
:endif
:push $style
:option -style=normal
static char *_LR_mname [$modules] =
{
:  do module
     "$name"$comma
:  enddo
};

static char *_LR_sname [$states] =
{
:  do state
     "$name"$comma
:  enddo
};

static char *_LR_ename [$events] =
{
:  do event
     "$name"$comma
:  enddo
};
:pop $style
:option -style=$style
:if not animate
#else
static char *_LR_mname [$modules] =
{
:  do module
     "$number"$comma
:  enddo
};

static char *_LR_sname [$states] =
{
:  do state
     "$number"$comma
:  enddo
};

static char *_LR_ename [$events] =
{
:  do event
     "$number"$comma
:  enddo
};
#endif
:endif
:if module "Dialog-Call"

MODULE $"dialog_call" (THREAD *thread)
{
    if (thread-> LR_stack_size < $stack_max)
        thread-> LR_stack [thread-> LR_stack_size++] = thread-> LR_state;
    else
      {
        fprintf (stdout,
            "State %d - Dialog-Call overflow\n", thread-> LR_state);
        exit (EXIT_FAILURE);
      }
}

MODULE $"dialog_return" (THREAD *thread)
{
    if (thread-> LR_stack_size > 0)
      {
        thread-> LR_state = thread-> LR_stack [--(thread-> LR_stack_size)];
        raise_exception ($"return_event");
      }
    else
      {
        fprintf (stdout,
            "State %d - Dialog-Return underflow\n", thread-> LR_state);
        exit (EXIT_FAILURE);
      }
}
:endif
:close

:output $dialog.i
:echo "lr I: building $dialog.i..."
/*---------------------------------------------------------------------------*
 *  $dialog.i - LIBERO dialog interpreter for $source.c.                     *
 *  Generated by LIBERO $version on $fulldate, $time.                        *
 *  Schema file used: $schema.                                               *
 *---------------------------------------------------------------------------*/
    if (agent_lookup (AGENT_NAME))
        return (0);                     /*  Agent already declared           */
    if ((agent = agent_declare (AGENT_NAME)) == NULL)
        return (-1);                    /*  Could not declare agent          */

#if (defined (SINGLE_THREADED))
    agent-> tcb_size     = 0;           /*  No context block                 */
    agent-> max_threads  = 1;           /*    and max. 1 thread              */
#else
    agent-> tcb_size     = sizeof (TCB);
#endif
    agent-> stack_size   = $stack_max;
    agent-> initialise   = initialise_the_thread;
    agent-> maxevent     = $events;
    agent-> maxmodule    = $modules;
    agent-> maxstate     = $states;
    agent-> priority     = SMT_PRIORITY_NORMAL;
    agent-> LR_defaults  = $defaults;
    agent-> LR_nextst    = &_LR_nextst [0][0];
    agent-> LR_action    = &_LR_action [0][0];
    agent-> LR_offset    = _LR_offset;
    agent-> LR_vector    = _LR_vector;
    agent-> LR_module    = _LR_module;
    agent-> LR_mname     = _LR_mname;
    agent-> LR_sname     = _LR_sname;
    agent-> LR_ename     = _LR_ename;
:if animate
    agent-> animate      = TRUE;
:endif
:close

!   Generate stubs for all modules not yet defined in source file

:internal initialise_the_thread
:set module_line="MODULE %s (THREAD *thread)"
:do stubs $source.c $dialog.d

MODULE $name (THREAD *thread)
{
    tcb = thread-> tcb;                 /*  Point to thread's context        */
}

:enddo
