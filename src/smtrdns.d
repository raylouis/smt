/*---------------------------------------------------------------------------*
 *  smtrdns.d - LIBERO dialog data definitions for smtrdns.c.                *
 *  Generated by LIBERO 2.30 on 14 Dec, 1999,  2:38.                         *
 *  Schema file used: smtschm.c.                                             *
 *---------------------------------------------------------------------------*/

/*- Symbolic constants and event numbers ------------------------------------*/

#define _LR_STOP                        0xFFFFL
#define _LR_NULL_EVENT                  -2
#define _LR_NULL_STATE                  -1
#define terminate_event                 -1
#define cancel_event                    0
#define client_event                    1
#define end_event                       2
#define error_event                     3
#define exception_event                 4
#define fatal_event                     5
#define found_event                     6
#define found_bad_event                 7
#define get_host_event                  8
#define get_ip_event                    9
#define host_name_event                 10
#define initialisation_error_event      11
#define input_ok_event                  12
#define invalid_event                   13
#define ip_value_event                  14
#define master_event                    15
#define name_server_event               16
#define name_server_ip_event            17
#define not_found_event                 18
#define ok_event                        19
#define read_more_event                 20
#define shutdown_event                  21
#define sock_closed_event               22
#define sock_error_event                23
#define sock_retry_event                24
#define sock_timeout_event              25
#define timer_event                     26
#define _LR_STATE_after_init            0
#define _LR_STATE_master_input          1
#define _LR_STATE_after_thread_search   2
#define _LR_STATE_request_type          3
#define _LR_STATE_host_name_in_cache    4
#define _LR_STATE_ip_address_in_cache   5
#define _LR_STATE_server_connection     6
#define _LR_STATE_server_connected      7
#define _LR_STATE_query_type            8
#define _LR_STATE_after_send_query      9
#define _LR_STATE_read_answer           10
#define _LR_STATE_recursive_check       11
#define _LR_STATE_get_answer            12
#define _LR_STATE_answer_for_host_request 13
#define _LR_STATE_answer_for_ip_request 14
#define _LR_STATE_after_next_request    15
#define _LR_STATE_validate_request      16
#define _LR_STATE_defaults              17
#define _LR_STATE_end_thread            18
#define _LR_defaults_state              17


/*- Function prototypes and macros ------------------------------------------*/

#ifndef MODULE
#define MODULE  static void             /*  Libero dialog modules            */
#endif

MODULE initialise_the_thread        (THREAD *thread);
MODULE add_bad_result_to_cache      (THREAD *thread);
MODULE add_to_cache                 (THREAD *thread);
MODULE add_user_data_in_client_thread (THREAD *thread);
MODULE check_if_answer_is_complete  (THREAD *thread);
MODULE check_recursive_value        (THREAD *thread);
MODULE check_request_in_invalid_server_table (THREAD *thread);
MODULE check_server_address         (THREAD *thread);
MODULE check_thread_type            (THREAD *thread);
MODULE clean_previous_request_resource (THREAD *thread);
MODULE connect_to_server            (THREAD *thread);
MODULE create_host_request          (THREAD *thread);
MODULE create_ip_request            (THREAD *thread);
MODULE create_request_thread        (THREAD *thread);
MODULE create_timeout_alarm         (THREAD *thread);
MODULE flush_timeout_alarm          (THREAD *thread);
MODULE free_all_server_resources    (THREAD *thread);
MODULE get_answer_result            (THREAD *thread);
MODULE get_current_request_type     (THREAD *thread);
MODULE get_host_message_value       (THREAD *thread);
MODULE get_ip_message_value         (THREAD *thread);
MODULE get_main_request_type        (THREAD *thread);
MODULE get_next_request             (THREAD *thread);
MODULE get_number_of_rr             (THREAD *thread);
MODULE get_socket_handle            (THREAD *thread);
MODULE load_host_file_in_cache      (THREAD *thread);
MODULE load_name_server_config      (THREAD *thread);
MODULE lookup_host_in_cache         (THREAD *thread);
MODULE lookup_ip_in_cache           (THREAD *thread);
MODULE make_ip_query_buffer         (THREAD *thread);
MODULE make_reverse_query_buffer    (THREAD *thread);
MODULE prepare_client_thread        (THREAD *thread);
MODULE purge_equivalent_request_from_stack (THREAD *thread);
MODULE read_answer_from_server      (THREAD *thread);
MODULE refresh_cache                (THREAD *thread);
MODULE search_thread_for_request    (THREAD *thread);
MODULE send_host_name_value         (THREAD *thread);
MODULE send_ip_address_value        (THREAD *thread);
MODULE send_query_to_server         (THREAD *thread);
MODULE set_new_value_of_recursive   (THREAD *thread);
MODULE set_refresh_cache_timer      (THREAD *thread);
MODULE signal_end_of_search         (THREAD *thread);
MODULE signal_error                 (THREAD *thread);
MODULE signal_timeout               (THREAD *thread);
MODULE terminate_the_thread         (THREAD *thread);
MODULE wait_for_socket_input        (THREAD *thread);

#define the_next_event              _the_next_event
#define the_exception_event         _the_exception_event
#define the_external_event          _the_external_event
#define exception_raised            _exception_raised
#define io_completed                _io_completed


/*- Static areas shared by all threads --------------------------------------*/

static word _LR_nextst [19][27] =
{
    { 0,3,0,0,0,0,0,0,0,0,0,18,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1 },
    { 0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,4,0,0,0,5,0,0,6,0,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,18,18,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,18,18,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0 },
    { 0,0,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,15,15,0,15,0 },
    { 0,0,0,0,0,0,0,0,0,0,9,0,0,0,9,0,0,9,0,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,15,15,9,15,0 },
    { 0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,10,0,15,15,0,15,0 },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,12,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,13,0,0,0,14,0,0,0,0,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,18,0,0,0,15,0,15,0,0,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,15,0,0,0,18,0,15,0,0,0,0,0,0,0,0,0,0 },
    { 0,0,18,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,6,0,0,0,0,0,0,0 },
    { 18,0,0,18,18,18,0,0,0,0,0,0,17,0,0,0,0,0,0,17,0,18,18,18,18
     ,18,18
    },
    { 0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,0 }
};

static word _LR_action [19][27] =
{
    { 0,2,0,0,0,0,0,0,0,0,0,3,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,4,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6 },
    { 0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,9,0,0,0,11,0,0,10,0,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,12,13,0,0,0,0,0,0,0,0,0,0,14,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,15,13,0,0,0,0,0,0,0,0,0,0,14,0,0,0,0,0,0,0,0 },
    { 0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,17,0,0,18,18,0,18,0 },
    { 0,0,0,0,0,0,0,0,0,0,19,0,0,0,20,0,0,20,0,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,21,0,0,18,18,22,18,0 },
    { 0,0,0,0,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,21,0,18,18,0,18,0 },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,25,0,0,0,0,0,24,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,26,0,0,0,26,0,0,0,0,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,27,0,0,0,28,0,18,0,0,0,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,29,0,0,0,30,0,18,0,0,0,0,0,0,0,0,0,0 },
    { 0,0,32,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,31,0,0,0,0,0,0,0 },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,18,0,0,0,0,0,34,0,0,0,0,0,0,0 },
    { 37,0,0,3,37,37,0,0,0,0,0,0,36,0,0,0,0,0,0,36,0,37,37,3,37,37
     ,35
    },
    { 0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,38,0,0,0,0,0,0,0,0,0,0,0 }
};

static word _LR_offset [] =
{
    0,
    0,
    4,
    7,
    10,
    13,
    16,
    19,
    21,
    23,
    25,
    27,
    29,
    32,
    35,
    38,
    41,
    43,
    46,
    48,
    51,
    54,
    56,
    58,
    62,
    65,
    69,
    71,
    75,
    79,
    83,
    87,
    89,
    93,
    97,
    100,
    104,
    105,
    107,
    110
};

static word _LR_vector [] =
{
    24,25,39,_LR_STOP,
    30,17,_LR_STOP,
    41,7,_LR_STOP,
    18,34,_LR_STOP,
    19,34,_LR_STOP,
    33,39,_LR_STOP,
    12,_LR_STOP,
    2,_LR_STOP,
    27,_LR_STOP,
    6,_LR_STOP,
    26,_LR_STOP,
    35,7,_LR_STOP,
    40,7,_LR_STOP,
    13,6,_LR_STOP,
    36,7,_LR_STOP,
    9,_LR_STOP,
    23,17,_LR_STOP,
    21,_LR_STOP,
    29,37,_LR_STOP,
    28,37,_LR_STOP,
    44,_LR_STOP,
    37,_LR_STOP,
    32,3,4,_LR_STOP,
    22,20,_LR_STOP,
    38,8,6,_LR_STOP,
    16,_LR_STOP,
    35,1,7,_LR_STOP,
    10,31,21,_LR_STOP,
    11,31,21,_LR_STOP,
    36,1,7,_LR_STOP,
    5,_LR_STOP,
    40,0,7,_LR_STOP,
    41,0,7,_LR_STOP,
    8,6,_LR_STOP,
    42,0,7,_LR_STOP,
    _LR_STOP,
    7,_LR_STOP,
    15,43,_LR_STOP,
    14,43,_LR_STOP
};

static HOOK *_LR_module [45] = {
    add_bad_result_to_cache,
    add_to_cache,
    add_user_data_in_client_thread,
    check_if_answer_is_complete,
    check_recursive_value,
    check_request_in_invalid_server_table,
    check_server_address,
    check_thread_type,
    clean_previous_request_resource,
    connect_to_server,
    create_host_request,
    create_ip_request,
    create_request_thread,
    create_timeout_alarm,
    flush_timeout_alarm,
    free_all_server_resources,
    get_answer_result,
    get_current_request_type,
    get_host_message_value,
    get_ip_message_value,
    get_main_request_type,
    get_next_request,
    get_number_of_rr,
    get_socket_handle,
    load_host_file_in_cache,
    load_name_server_config,
    lookup_host_in_cache,
    lookup_ip_in_cache,
    make_ip_query_buffer,
    make_reverse_query_buffer,
    prepare_client_thread,
    purge_equivalent_request_from_stack,
    read_answer_from_server,
    refresh_cache,
    search_thread_for_request,
    send_host_name_value,
    send_ip_address_value,
    send_query_to_server,
    set_new_value_of_recursive,
    set_refresh_cache_timer,
    signal_end_of_search,
    signal_error,
    signal_timeout,
    terminate_the_thread,
    wait_for_socket_input
};

#if (defined (DEBUG))
static char *_LR_mname [45] =
{
     "Add-Bad-Result-To-Cache",
     "Add-To-Cache",
     "Add-User-Data-In-Client-Thread",
     "Check-If-Answer-Is-Complete",
     "Check-Recursive-Value",
     "Check-Request-In-Invalid-Server-Table",
     "Check-Server-Address",
     "Check-Thread-Type",
     "Clean-Previous-Request-Resource",
     "Connect-To-Server",
     "Create-Host-Request",
     "Create-Ip-Request",
     "Create-Request-Thread",
     "Create-Timeout-Alarm",
     "Flush-Timeout-Alarm",
     "Free-All-Server-Resources",
     "Get-Answer-Result",
     "Get-Current-Request-Type",
     "Get-Host-Message-Value",
     "Get-Ip-Message-Value",
     "Get-Main-Request-Type",
     "Get-Next-Request",
     "Get-Number-Of-Rr",
     "Get-Socket-Handle",
     "Load-Host-File-In-Cache",
     "Load-Name-Server-Config",
     "Lookup-Host-In-Cache",
     "Lookup-Ip-In-Cache",
     "Make-Ip-Query-Buffer",
     "Make-Reverse-Query-Buffer",
     "Prepare-Client-Thread",
     "Purge-Equivalent-Request-From-Stack",
     "Read-Answer-From-Server",
     "Refresh-Cache",
     "Search-Thread-For-Request",
     "Send-Host-Name-Value",
     "Send-Ip-Address-Value",
     "Send-Query-To-Server",
     "Set-New-Value-Of-Recursive",
     "Set-Refresh-Cache-Timer",
     "Signal-End-Of-Search",
     "Signal-Error",
     "Signal-Timeout",
     "Terminate-The-Thread",
     "Wait-For-Socket-Input"
};

static char *_LR_sname [19] =
{
     "After-Init",
     "Master-Input",
     "After-Thread-Search",
     "Request-Type",
     "Host-Name-In-Cache",
     "Ip-Address-In-Cache",
     "Server-Connection",
     "Server-Connected",
     "Query-Type",
     "After-Send-Query",
     "Read-Answer",
     "Recursive-Check",
     "Get-Answer",
     "Answer-For-Host-Request",
     "Answer-For-Ip-Request",
     "After-Next-Request",
     "Validate-Request",
     "Defaults",
     "End-Thread"
};

static char *_LR_ename [27] =
{
     "Cancel-Event",
     "Client-Event",
     "End-Event",
     "Error-Event",
     "Exception-Event",
     "Fatal-Event",
     "Found-Event",
     "Found-Bad-Event",
     "Get-Host-Event",
     "Get-Ip-Event",
     "Host-Name-Event",
     "Initialisation-Error-Event",
     "Input-Ok-Event",
     "Invalid-Event",
     "Ip-Value-Event",
     "Master-Event",
     "Name-Server-Event",
     "Name-Server-Ip-Event",
     "Not-Found-Event",
     "Ok-Event",
     "Read-More-Event",
     "Shutdown-Event",
     "Sock-Closed-Event",
     "Sock-Error-Event",
     "Sock-Retry-Event",
     "Sock-Timeout-Event",
     "Timer-Event"
};
#else
static char *_LR_mname [45] =
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
     "26",
     "27",
     "28",
     "29",
     "30",
     "31",
     "32",
     "33",
     "34",
     "35",
     "36",
     "37",
     "38",
     "39",
     "40",
     "41",
     "42",
     "43",
     "44"
};

static char *_LR_sname [19] =
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
     "18"
};

static char *_LR_ename [27] =
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
#endif
