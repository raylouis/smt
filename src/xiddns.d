/*---------------------------------------------------------------------------*
 *  xiddns.d - LIBERO dialog data definitions for xiddns.c.                  *
 *  Generated by LIBERO 2.30 on 16 Feb, 2000, 14:48.                         *
 *  Schema file used: smtschm.c.                                             *
 *---------------------------------------------------------------------------*/

/*- Symbolic constants and event numbers ------------------------------------*/

#define _LR_STOP                        0xFFFFL
#define _LR_NULL_EVENT                  -2
#define _LR_NULL_STATE                  -1
#define terminate_event                 -1
#define error_event                     0
#define exception_event                 1
#define ignore_event                    2
#define no_more_event                   3
#define ok_event                        4
#define shutdown_event                  5
#define signoff_event                   6
#define signon_event                    7
#define sock_error_event                8
#define sock_timeout_event              9
#define _LR_STATE_after_init            0
#define _LR_STATE_after_startup         1
#define _LR_STATE_server_running        2
#define _LR_STATE_before_signon         3
#define _LR_STATE_signon_connect        4
#define _LR_STATE_signon_sent           5
#define _LR_STATE_signon_answer         6
#define _LR_STATE_before_signoff        7
#define _LR_STATE_signoff_connect       8
#define _LR_STATE_signoff_sent          9
#define _LR_STATE_signoff_answer        10
#define _LR_STATE_defaults              11
#define _LR_defaults_state              11


/*- Function prototypes and macros ------------------------------------------*/

#ifndef MODULE
#define MODULE  static void             /*  Libero dialog modules            */
#endif

MODULE initialise_the_thread        (THREAD *thread);
MODULE check_if_automatic_signon    (THREAD *thread);
MODULE terminate_the_thread         (THREAD *thread);
MODULE initialise_signon_timer      (THREAD *thread);
MODULE load_ddns_services_list      (THREAD *thread);
MODULE get_first_ddns_profile       (THREAD *thread);
MODULE connect_to_ddns_server       (THREAD *thread);
MODULE drop_ddns_services_list      (THREAD *thread);
MODULE get_next_ddns_profile        (THREAD *thread);
MODULE get_connected_socket         (THREAD *thread);
MODULE send_ddns_signon_request     (THREAD *thread);
MODULE close_ddns_socket            (THREAD *thread);
MODULE signal_connection_failed     (THREAD *thread);
MODULE get_ddns_server_response     (THREAD *thread);
MODULE check_ddns_confirmation      (THREAD *thread);
MODULE send_ddns_signoff_request    (THREAD *thread);
MODULE signal_ddns_sock_timeout     (THREAD *thread);
MODULE signal_ddns_sock_error       (THREAD *thread);

#define the_next_event              _the_next_event
#define the_exception_event         _the_exception_event
#define the_external_event          _the_external_event
#define exception_raised            _exception_raised
#define io_completed                _io_completed


/*- Static areas shared by all threads --------------------------------------*/

static word _LR_nextst [12][10] =
{
    { 0,0,0,0,1,0,0,0,0,0 },
    { 0,0,2,0,3,0,0,0,0,0 },
    { 0,0,0,0,0,0,7,3,0,0 },
    { 3,0,0,2,4,0,0,0,0,0 },
    { 0,0,3,0,5,0,0,0,3,0 },
    { 0,0,0,0,6,0,0,0,0,0 },
    { 0,0,0,0,3,0,0,0,0,0 },
    { 7,0,0,2,8,0,0,0,0,0 },
    { 0,0,7,0,9,0,0,0,7,0 },
    { 0,0,0,0,10,0,0,0,0,0 },
    { 0,0,0,0,7,0,0,0,0,0 },
    { 0,11,0,0,0,11,11,11,11,11 }
};

static word _LR_action [12][10] =
{
    { 2,0,0,0,1,0,0,0,0,0 },
    { 0,0,4,0,3,0,0,0,0,0 },
    { 0,0,0,0,0,0,5,5,0,0 },
    { 8,0,0,7,6,0,0,0,0,0 },
    { 0,0,10,0,9,0,0,0,11,0 },
    { 0,0,0,0,12,0,0,0,0,0 },
    { 0,0,0,0,13,0,0,0,0,0 },
    { 8,0,0,7,6,0,0,0,0,0 },
    { 0,0,10,0,14,0,0,0,11,0 },
    { 0,0,0,0,12,0,0,0,0,0 },
    { 0,0,0,0,13,0,0,0,0,0 },
    { 0,2,0,0,0,2,4,4,16,15 }
};

static word _LR_offset [] =
{
    0,
    0,
    2,
    4,
    8,
    9,
    12,
    14,
    16,
    18,
    21,
    24,
    27,
    29,
    33,
    36,
    39
};

static word _LR_vector [] =
{
    0,_LR_STOP,
    1,_LR_STOP,
    2,3,4,_LR_STOP,
    _LR_STOP,
    3,4,_LR_STOP,
    5,_LR_STOP,
    6,_LR_STOP,
    7,_LR_STOP,
    8,9,_LR_STOP,
    10,7,_LR_STOP,
    11,7,_LR_STOP,
    12,_LR_STOP,
    13,10,7,_LR_STOP,
    8,14,_LR_STOP,
    15,1,_LR_STOP,
    16,1,_LR_STOP
};

static HOOK *_LR_module [17] = {
    check_if_automatic_signon,
    terminate_the_thread,
    initialise_signon_timer,
    load_ddns_services_list,
    get_first_ddns_profile,
    connect_to_ddns_server,
    drop_ddns_services_list,
    get_next_ddns_profile,
    get_connected_socket,
    send_ddns_signon_request,
    close_ddns_socket,
    signal_connection_failed,
    get_ddns_server_response,
    check_ddns_confirmation,
    send_ddns_signoff_request,
    signal_ddns_sock_timeout,
    signal_ddns_sock_error
};

#if (defined (DEBUG))
static char *_LR_mname [17] =
{
     "Check-If-Automatic-Signon",
     "Terminate-The-Thread",
     "Initialise-Signon-Timer",
     "Load-Ddns-Services-List",
     "Get-First-Ddns-Profile",
     "Connect-To-Ddns-Server",
     "Drop-Ddns-Services-List",
     "Get-Next-Ddns-Profile",
     "Get-Connected-Socket",
     "Send-Ddns-Signon-Request",
     "Close-Ddns-Socket",
     "Signal-Connection-Failed",
     "Get-Ddns-Server-Response",
     "Check-Ddns-Confirmation",
     "Send-Ddns-Signoff-Request",
     "Signal-Ddns-Sock-Timeout",
     "Signal-Ddns-Sock-Error"
};

static char *_LR_sname [12] =
{
     "After-Init",
     "After-Startup",
     "Server-Running",
     "Before-Signon",
     "Signon-Connect",
     "Signon-Sent",
     "Signon-Answer",
     "Before-Signoff",
     "Signoff-Connect",
     "Signoff-Sent",
     "Signoff-Answer",
     "Defaults"
};

static char *_LR_ename [10] =
{
     "Error-Event",
     "Exception-Event",
     "Ignore-Event",
     "No-More-Event",
     "Ok-Event",
     "Shutdown-Event",
     "Signoff-Event",
     "Signon-Event",
     "Sock-Error-Event",
     "Sock-Timeout-Event"
};
#else
static char *_LR_mname [17] =
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
     "16"
};

static char *_LR_sname [12] =
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
     "11"
};

static char *_LR_ename [10] =
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
     "9"
};
#endif
