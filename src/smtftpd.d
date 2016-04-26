/*---------------------------------------------------------------------------*
 *  smtftpd.d - LIBERO dialog data definitions for smtftpd.c.                *
 *  Generated by LIBERO 2.30 on  5 Dec, 1999, 14:17.                         *
 *  Schema file used: smtschm.c.                                             *
 *---------------------------------------------------------------------------*/

/*- Symbolic constants and event numbers ------------------------------------*/

#define _LR_STOP                        0xFFFFL
#define _LR_NULL_EVENT                  -2
#define _LR_NULL_STATE                  -1
#define terminate_event                 -1
#define abort_event                     0
#define active_event                    1
#define append_file_event               2
#define append_file_mode_event          3
#define close_control_event             4
#define error_event                     5
#define exception_event                 6
#define finished_event                  7
#define get_file_event                  8
#define get_file_mode_event             9
#define master_event                    10
#define ok_event                        11
#define passive_event                   12
#define put_file_event                  13
#define put_file_mode_event             14
#define shutdown_event                  15
#define sock_closed_event               16
#define sock_error_event                17
#define sock_retry_event                18
#define sock_timeout_event              19
#define _LR_STATE_after_init            0
#define _LR_STATE_getting_event         1
#define _LR_STATE_after_open_passive    2
#define _LR_STATE_getting_passive_event 3
#define _LR_STATE_after_passive_connect 4
#define _LR_STATE_connection_type       5
#define _LR_STATE_before_put            6
#define _LR_STATE_before_get            7
#define _LR_STATE_before_append         8
#define _LR_STATE_end_transfer          9
#define _LR_STATE_defaults              10
#define _LR_defaults_state              10


/*- Function prototypes and macros ------------------------------------------*/

#ifndef MODULE
#define MODULE  static void             /*  Libero dialog modules            */
#endif

MODULE initialise_the_thread        (THREAD *thread);
MODULE connect_to_client            (THREAD *thread);
MODULE open_listen_socket           (THREAD *thread);
MODULE terminate_the_thread         (THREAD *thread);
MODULE get_message_put_file         (THREAD *thread);
MODULE check_connection_type        (THREAD *thread);
MODULE get_message_get_file         (THREAD *thread);
MODULE get_message_append_file      (THREAD *thread);
MODULE get_message_passive          (THREAD *thread);
MODULE create_child_thread          (THREAD *thread);
MODULE get_message_abort            (THREAD *thread);
MODULE send_event_to_child_thread   (THREAD *thread);
MODULE signal_passive_open          (THREAD *thread);
MODULE wait_for_socket_input        (THREAD *thread);
MODULE signal_error                 (THREAD *thread);
MODULE accept_client_connection     (THREAD *thread);
MODULE set_transfer_mode            (THREAD *thread);
MODULE signal_connection_to_control (THREAD *thread);
MODULE put_file                     (THREAD *thread);
MODULE get_file                     (THREAD *thread);
MODULE append_file                  (THREAD *thread);
MODULE get_connection_handle        (THREAD *thread);
MODULE signal_connection_failed     (THREAD *thread);
MODULE signal_end_of_transfer       (THREAD *thread);
MODULE signal_error_in_transfer     (THREAD *thread);
MODULE abort_file_transfer          (THREAD *thread);
MODULE close_data_connection        (THREAD *thread);
MODULE signal_abort_to_control      (THREAD *thread);

#define the_next_event              _the_next_event
#define the_exception_event         _the_exception_event
#define the_external_event          _the_external_event
#define exception_raised            _exception_raised
#define io_completed                _io_completed


/*- Static areas shared by all threads --------------------------------------*/

static word _LR_nextst [11][20] =
{
    { 0,0,8,0,0,0,0,0,7,0,1,0,2,6,0,0,0,0,0,0 },
    { 1,0,5,0,0,0,0,0,5,0,0,0,1,5,0,0,0,0,0,0 },
    { 0,0,0,0,0,2,0,0,0,0,0,3,0,0,0,0,0,0,0,0 },
    { 0,0,3,0,0,0,0,0,3,0,0,4,0,3,0,0,0,0,0,0 },
    { 0,0,9,9,0,0,0,0,9,9,0,0,0,9,9,0,0,0,0,0 },
    { 0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,0,9,0,0,0,0,6,6,6,6 },
    { 0,0,0,0,0,0,0,0,0,0,0,9,0,0,0,0,7,7,7,7 },
    { 0,0,0,0,0,0,0,0,0,0,0,9,0,0,0,0,8,8,8,8 },
    { 9,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,9,9,0,0 },
    { 10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10 }
};

static word _LR_action [11][20] =
{
    { 0,0,2,0,0,4,0,0,2,0,1,0,3,2,0,0,0,0,0,0 },
    { 9,0,7,0,0,0,0,0,6,0,0,0,8,5,0,0,0,0,0,0 },
    { 0,0,0,0,0,11,0,0,0,0,0,10,0,0,0,0,0,0,0,0 },
    { 0,0,15,0,0,0,0,0,14,0,0,12,0,13,0,0,0,0,0,0 },
    { 0,0,21,18,0,0,0,0,20,17,0,0,0,19,16,0,0,0,0,0 },
    { 0,22,0,0,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,0,24,0,0,0,0,4,25,4,4 },
    { 0,0,0,0,0,0,0,0,0,0,0,26,0,0,0,0,4,25,4,4 },
    { 0,0,0,0,0,0,0,0,0,0,0,27,0,0,0,0,4,25,4,4 },
    { 30,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,29,29,0,0 },
    { 31,1,1,1,4,1,4,1,1,1,1,1,1,1,1,4,1,1,1,1 }
};

static word _LR_offset [] =
{
    0,
    0,
    1,
    3,
    5,
    7,
    10,
    13,
    16,
    19,
    22,
    25,
    28,
    31,
    33,
    35,
    37,
    40,
    43,
    46,
    50,
    54,
    58,
    60,
    62,
    66,
    69,
    73,
    77,
    80,
    83,
    86
};

static word _LR_vector [] =
{
    _LR_STOP,
    0,_LR_STOP,
    1,_LR_STOP,
    2,_LR_STOP,
    3,4,_LR_STOP,
    5,4,_LR_STOP,
    6,4,_LR_STOP,
    7,8,_LR_STOP,
    9,10,_LR_STOP,
    11,12,_LR_STOP,
    13,2,_LR_STOP,
    14,15,_LR_STOP,
    3,_LR_STOP,
    5,_LR_STOP,
    6,_LR_STOP,
    16,17,_LR_STOP,
    16,18,_LR_STOP,
    16,19,_LR_STOP,
    3,16,17,_LR_STOP,
    5,16,18,_LR_STOP,
    6,16,19,_LR_STOP,
    8,_LR_STOP,
    10,_LR_STOP,
    20,16,17,_LR_STOP,
    21,2,_LR_STOP,
    20,16,18,_LR_STOP,
    20,16,19,_LR_STOP,
    22,2,_LR_STOP,
    23,2,_LR_STOP,
    24,2,_LR_STOP,
    25,26,2,_LR_STOP
};

static HOOK *_LR_module [27] = {
    connect_to_client,
    open_listen_socket,
    terminate_the_thread,
    get_message_put_file,
    check_connection_type,
    get_message_get_file,
    get_message_append_file,
    get_message_passive,
    create_child_thread,
    get_message_abort,
    send_event_to_child_thread,
    signal_passive_open,
    wait_for_socket_input,
    signal_error,
    accept_client_connection,
    set_transfer_mode,
    signal_connection_to_control,
    put_file,
    get_file,
    append_file,
    get_connection_handle,
    signal_connection_failed,
    signal_end_of_transfer,
    signal_error_in_transfer,
    abort_file_transfer,
    close_data_connection,
    signal_abort_to_control
};

#if (defined (DEBUG))
static char *_LR_mname [27] =
{
     "Connect-To-Client",
     "Open-Listen-Socket",
     "Terminate-The-Thread",
     "Get-Message-Put-File",
     "Check-Connection-Type",
     "Get-Message-Get-File",
     "Get-Message-Append-File",
     "Get-Message-Passive",
     "Create-Child-Thread",
     "Get-Message-Abort",
     "Send-Event-To-Child-Thread",
     "Signal-Passive-Open",
     "Wait-For-Socket-Input",
     "Signal-Error",
     "Accept-Client-Connection",
     "Set-Transfer-Mode",
     "Signal-Connection-To-Control",
     "Put-File",
     "Get-File",
     "Append-File",
     "Get-Connection-Handle",
     "Signal-Connection-Failed",
     "Signal-End-Of-Transfer",
     "Signal-Error-In-Transfer",
     "Abort-File-Transfer",
     "Close-Data-Connection",
     "Signal-Abort-To-Control"
};

static char *_LR_sname [11] =
{
     "After-Init",
     "Getting-Event",
     "After-Open-Passive",
     "Getting-Passive-Event",
     "After-Passive-Connect",
     "Connection-Type",
     "Before-Put",
     "Before-Get",
     "Before-Append",
     "End-Transfer",
     "Defaults"
};

static char *_LR_ename [20] =
{
     "Abort-Event",
     "Active-Event",
     "Append-File-Event",
     "Append-File-Mode-Event",
     "Close-Control-Event",
     "Error-Event",
     "Exception-Event",
     "Finished-Event",
     "Get-File-Event",
     "Get-File-Mode-Event",
     "Master-Event",
     "Ok-Event",
     "Passive-Event",
     "Put-File-Event",
     "Put-File-Mode-Event",
     "Shutdown-Event",
     "Sock-Closed-Event",
     "Sock-Error-Event",
     "Sock-Retry-Event",
     "Sock-Timeout-Event"
};
#else
static char *_LR_mname [27] =
{
     "0",
     "1",
     "2",
     "3",
     "4",
     "5",
     "6",
     "7",
     "8",
     "9",
     "10",
     "11",
     "12",
     "13",
     "14",
     "15",
     "16",
     "17",
     "18",
     "19",
     "20",
     "21",
     "22",
     "23",
     "24",
     "25",
     "26"
};

static char *_LR_sname [11] =
{
     "0",
     "1",
     "2",
     "3",
     "4",
     "5",
     "6",
     "7",
     "8",
     "9",
     "10"
};

static char *_LR_ename [20] =
{
     "0",
     "1",
     "2",
     "3",
     "4",
     "5",
     "6",
     "7",
     "8",
     "9",
     "10",
     "11",
     "12",
     "13",
     "14",
     "15",
     "16",
     "17",
     "18",
     "19"
};
#endif
