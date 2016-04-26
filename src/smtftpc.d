/*---------------------------------------------------------------------------*
 *  smtftpc.d - LIBERO dialog data definitions for smtftpc.c.                *
 *  Generated by LIBERO 2.30 on  7 Dec, 1999, 14:10.                         *
 *  Schema file used: smtschm.c.                                             *
 *---------------------------------------------------------------------------*/

/*- Symbolic constants and event numbers ------------------------------------*/

#define _LR_STOP                        0xFFFFL
#define _LR_NULL_EVENT                  -2
#define _LR_NULL_STATE                  -1
#define terminate_event                 -1
#define abort_event                     0
#define aborted_event                   1
#define append_event                    2
#define cancel_event                    3
#define cdup_event                      4
#define client_event                    5
#define connected_event                 6
#define cwd_event                       7
#define delete_event                    8
#define disabled_event                  9
#define end_event                       10
#define error_event                     11
#define exception_event                 12
#define help_event                      13
#define input_ok_event                  14
#define invalid_event                   15
#define invalid_vhost_event             16
#define list_event                      17
#define master_event                    18
#define mkdir_event                     19
#define mode_event                      20
#define names_event                     21
#define no_rootdir_event                22
#define noop_event                      23
#define not_found_event                 24
#define not_protected_event             25
#define ok_event                        26
#define over_quota_event                27
#define passive_event                   28
#define password_event                  29
#define port_event                      30
#define pwd_event                       31
#define quit_event                      32
#define reinit_event                    33
#define reload_event                    34
#define rename_from_event               35
#define rename_to_event                 36
#define restart_event                   37
#define retrieve_event                  38
#define return_event                    39
#define rmdir_event                     40
#define shutdown_event                  41
#define size_event                      42
#define sock_closed_event               43
#define sock_error_event                44
#define sock_retry_event                45
#define sock_timeout_event              46
#define store_event                     47
#define structure_event                 48
#define system_event                    49
#define timeout_event                   50
#define type_event                      51
#define unauthorised_event              52
#define unexpected_event                53
#define unsupported_event               54
#define user_event                      55
#define _LR_STATE_after_init            0
#define _LR_STATE_master_startup        1
#define _LR_STATE_master_disabled       2
#define _LR_STATE_master_input          3
#define _LR_STATE_master_restart        4
#define _LR_STATE_client_input          5
#define _LR_STATE_before_user           6
#define _LR_STATE_expect_user           7
#define _LR_STATE_have_user             8
#define _LR_STATE_before_password       9
#define _LR_STATE_expect_password       10
#define _LR_STATE_have_password         11
#define _LR_STATE_failed_password       12
#define _LR_STATE_before_password_fake  13
#define _LR_STATE_expect_password_fake  14
#define _LR_STATE_before_command        15
#define _LR_STATE_expect_command        16
#define _LR_STATE_uploading_file        17
#define _LR_STATE_downloading_file      18
#define _LR_STATE_transfer_command      19
#define _LR_STATE_aborting_transfer     20
#define _LR_STATE_check_file_to_download 21
#define _LR_STATE_check_file_to_rename  22
#define _LR_STATE_expect_rename_to      23
#define _LR_STATE_check_file_for_size   24
#define _LR_STATE_after_open_passive    25
#define _LR_STATE_defaults              26
#define _LR_STATE_end_thread            27
#define _LR_defaults_state              26


/*- Function prototypes and macros ------------------------------------------*/

#ifndef MODULE
#define MODULE  static void             /*  Libero dialog modules            */
#endif

MODULE initialise_the_thread        (THREAD *thread);
MODULE check_that_http_is_active    (THREAD *thread);
MODULE initialise_master_thread     (THREAD *thread);
MODULE check_if_ftp_enabled         (THREAD *thread);
MODULE open_master_socket           (THREAD *thread);
MODULE wait_for_socket_input        (THREAD *thread);
MODULE resolve_ip_virtual_host      (THREAD *thread);
MODULE initialise_client_thread     (THREAD *thread);
MODULE check_client_ip_allowed      (THREAD *thread);
MODULE write_service_ready          (THREAD *thread);
MODULE write_service_unavailable    (THREAD *thread);
MODULE terminate_the_thread         (THREAD *thread);
MODULE load_virtual_hosts           (THREAD *thread);
MODULE check_rootdir_exists         (THREAD *thread);
MODULE accept_client_connection     (THREAD *thread);
MODULE reload_config_if_needed      (THREAD *thread);
MODULE free_all_server_resources    (THREAD *thread);
MODULE kill_all_active_connections  (THREAD *thread);
MODULE prepare_to_close_master_socket (THREAD *thread);
MODULE wait_for_connections_to_close (THREAD *thread);
MODULE close_master_socket          (THREAD *thread);
MODULE read_ftp_request             (THREAD *thread);
MODULE check_if_more_input          (THREAD *thread);
MODULE flush_time_out               (THREAD *thread);
MODULE dialog_return                (THREAD *thread);
MODULE write_time_out_message       (THREAD *thread);
MODULE check_socket_type            (THREAD *thread);
MODULE set_time_out                 (THREAD *thread);
MODULE prepare_to_get_input         (THREAD *thread);
MODULE dialog_call                  (THREAD *thread);
MODULE get_ftp_command              (THREAD *thread);
MODULE resolve_user_virtual_host    (THREAD *thread);
MODULE check_user_profile           (THREAD *thread);
MODULE write_closing_connection     (THREAD *thread);
MODULE write_help_message           (THREAD *thread);
MODULE write_return_message         (THREAD *thread);
MODULE write_unsupported_command    (THREAD *thread);
MODULE write_invalid_command        (THREAD *thread);
MODULE write_unexpected_command     (THREAD *thread);
MODULE initialise_user_session      (THREAD *thread);
MODULE write_user_logged_in         (THREAD *thread);
MODULE check_user_password          (THREAD *thread);
MODULE write_entry_to_logfile       (THREAD *thread);
MODULE check_user_quotas            (THREAD *thread);
MODULE sleep_after_failed_password  (THREAD *thread);
MODULE write_invalid_password       (THREAD *thread);
MODULE make_full_directory_listing  (THREAD *thread);
MODULE check_ready_for_file_transfer (THREAD *thread);
MODULE send_put_data_file_request   (THREAD *thread);
MODULE make_brief_directory_listing (THREAD *thread);
MODULE make_new_directory           (THREAD *thread);
MODULE remove_directory             (THREAD *thread);
MODULE write_name_of_system         (THREAD *thread);
MODULE set_representation_type      (THREAD *thread);
MODULE set_structure_type           (THREAD *thread);
MODULE make_file_name               (THREAD *thread);
MODULE check_if_file_exists         (THREAD *thread);
MODULE write_working_directory      (THREAD *thread);
MODULE change_current_directory     (THREAD *thread);
MODULE directory_move_up            (THREAD *thread);
MODULE set_restart_position         (THREAD *thread);
MODULE send_get_data_file_request   (THREAD *thread);
MODULE send_append_data_file_request (THREAD *thread);
MODULE delete_the_file              (THREAD *thread);
MODULE set_stream_mode              (THREAD *thread);
MODULE get_data_port                (THREAD *thread);
MODULE open_passive_data_connection (THREAD *thread);
MODULE check_if_temporary_file      (THREAD *thread);
MODULE write_user_not_authorised    (THREAD *thread);
MODULE write_user_over_quota        (THREAD *thread);
MODULE write_data_connected         (THREAD *thread);
MODULE set_transfer_ended           (THREAD *thread);
MODULE get_uploaded_file_size       (THREAD *thread);
MODULE signal_socket_error          (THREAD *thread);
MODULE send_abort_to_data_connection (THREAD *thread);
MODULE write_transfer_aborted       (THREAD *thread);
MODULE write_file_not_found         (THREAD *thread);
MODULE write_pending_action         (THREAD *thread);
MODULE rename_the_file              (THREAD *thread);
MODULE write_file_size              (THREAD *thread);
MODULE make_open_passive_message    (THREAD *thread);
MODULE write_open_passive_okay      (THREAD *thread);
MODULE write_open_passive_failed    (THREAD *thread);
MODULE cancel_data_thread           (THREAD *thread);

#define the_next_event              _the_next_event
#define the_exception_event         _the_exception_event
#define the_external_event          _the_external_event
#define exception_raised            _exception_raised
#define io_completed                _io_completed


/*- Static areas shared by all threads --------------------------------------*/

static word _LR_nextst [28][56] =
{
    { 0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,3,0,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
     ,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
    },
    { 0,0,0,3,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
     ,0,0,0,0,3,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,27,0,0,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0
     ,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,13,6,6,6,6,6,6,6,6,6,6,6,6,6
     ,6,6,27,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,8
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,9,0,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0
     ,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 6,6,6,6,6,6,6,6,6,6,6,6,6,9,6,6,13,6,6,6,6,6,6,9,6,6,6,6,6
     ,11,6,6,27,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,8
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,15,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
     ,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0
     ,0,0,0,0,0,0,0,0,0,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 6,6,6,6,6,6,6,6,6,6,6,6,6,13,6,6,13,6,6,6,6,6,6,13,6,6,6,6,6
     ,12,6,6,27,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,8
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0
     ,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 0,0,17,0,15,0,0,15,15,0,0,0,0,15,0,0,0,18,0,15,15,18,0,15,0
     ,0,0,15,25,0,15,15,27,6,0,22,0,15,21,0,15,0,24,0,0,0,0,17,15
     ,15,0,15,15,15,0,8
    },
    { 17,17,17,17,17,17,17,17,17,17,15,15,17,17,19,15,17,17,17,17
     ,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17
     ,17,17,17,27,27,17,27,17,17,17,17,17,17,17,17,17
    },
    { 18,18,18,18,18,18,18,18,18,18,15,15,18,18,19,15,18,18,18,18
     ,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18
     ,18,18,18,27,27,18,27,18,18,18,18,18,18,18,18,18
    },
    { 20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 20,15,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20
     ,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20
     ,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,18,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,15,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,5,0,0,0
     ,0,0,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0
     ,0,0,0,27,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,15,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 15,15,15,27,15,15,15,15,15,15,15,27,27,15,15,15,15,15,15,15
     ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
     ,15,27,15,27,27,27,27,15,15,15,15,15,15,15,15,15
    },
    { 0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    }
};

static word _LR_action [28][56] =
{
    { 0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,2,0,0,0,0,0,0,4,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,6,0,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
     ,7,7,7,7,7,7,7,8,7,7,7,5,7,7,7,7,7,7,7,7,7,7,7,7,7,7
    },
    { 0,0,0,7,0,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
     ,0,0,0,0,10,0,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,0,0,14,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,0,0,0,15,0,0,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0
     ,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 25,25,25,25,25,25,25,25,25,25,25,25,25,20,25,23,24,25,25,25
     ,25,25,25,21,25,25,25,25,25,25,25,25,19,25,25,25,25,25,25,25
     ,25,25,25,25,25,25,25,25,25,25,25,25,25,25,22,18
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,26,21,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0
     ,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 25,25,25,25,25,25,25,25,25,25,25,25,25,20,25,23,21,25,25,25
     ,25,25,25,21,25,25,25,25,25,27,25,25,19,25,25,25,25,25,25,25
     ,25,25,25,25,25,25,25,25,25,25,25,25,25,25,22,18
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,28,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25
     ,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25
     ,25,25,25,25,25,25,25,25,25,25,30,25,25,25,25,25
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0
     ,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 25,25,25,25,25,25,25,25,25,25,25,25,25,20,25,23,21,25,25,25
     ,25,25,25,21,25,25,25,25,25,29,25,25,19,25,25,25,25,25,25,25
     ,25,25,25,25,25,25,25,25,25,25,25,25,25,25,22,18
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0
     ,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 0,0,45,0,42,0,0,41,46,0,0,0,0,20,0,0,0,32,0,34,47,33,0,21,0
     ,0,0,54,51,0,48,40,49,50,0,39,0,43,39,0,35,0,39,0,0,0,0,44
     ,38,36,0,37,53,52,0,31
    },
    { 7,7,7,7,7,7,55,7,7,7,57,56,7,7,58,23,7,7,7,7,7,7,7,7,7,7,7,7
     ,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,60,59,14,60,7,7,7,7,7,7,7,7,7
    },
    { 7,7,7,7,7,7,55,7,7,7,61,56,7,7,58,23,7,7,7,7,7,7,7,7,7,7,7,7
     ,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,60,59,14,60,7,7,7,7,7,7,7,7,7
    },
    { 62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 7,63,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
     ,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,66,0,64,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65,52,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,66,0,67,0,0
     ,0,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,65,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,21,0,0,0,0,0
     ,0,0,0,19,0,0,0,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,66,0,69,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65,0,0,0
    },
    { 0,0,0,0,0,0,0,0,0,0,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,70,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    },
    { 25,25,25,60,25,25,73,25,25,25,25,72,60,25,25,23,25,25,25,25
     ,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25
     ,25,60,25,60,59,60,60,25,25,25,25,25,25,25,22,25
    },
    { 0,0,0,0,0,75,0,0,0,0,0,0,0,0,0,0,0,0,74,0,0,0,0,0,0,0,0,0,0
     ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    }
};

static word _LR_offset [] =
{
    0,
    0,
    4,
    7,
    12,
    15,
    17,
    22,
    23,
    25,
    28,
    30,
    35,
    38,
    43,
    45,
    48,
    53,
    55,
    58,
    61,
    63,
    65,
    67,
    69,
    72,
    74,
    77,
    79,
    84,
    86,
    89,
    91,
    97,
    103,
    106,
    109,
    111,
    114,
    117,
    120,
    122,
    125,
    128,
    131,
    137,
    143,
    148,
    151,
    154,
    159,
    161,
    163,
    166,
    168,
    170,
    173,
    177,
    184,
    188,
    191,
    193,
    198,
    200,
    202,
    207,
    210,
    213,
    219,
    223,
    225,
    228,
    230,
    234,
    236,
    241
};

static word _LR_vector [] =
{
    0,1,2,_LR_STOP,
    3,4,_LR_STOP,
    5,6,7,8,_LR_STOP,
    9,10,_LR_STOP,
    10,_LR_STOP,
    11,12,3,4,_LR_STOP,
    _LR_STOP,
    2,_LR_STOP,
    13,4,_LR_STOP,
    14,_LR_STOP,
    15,16,17,18,_LR_STOP,
    19,2,_LR_STOP,
    20,21,22,23,_LR_STOP,
    4,_LR_STOP,
    24,25,_LR_STOP,
    26,27,4,28,_LR_STOP,
    29,_LR_STOP,
    30,31,_LR_STOP,
    32,25,_LR_STOP,
    33,_LR_STOP,
    34,_LR_STOP,
    35,_LR_STOP,
    36,_LR_STOP,
    31,34,_LR_STOP,
    37,_LR_STOP,
    38,39,_LR_STOP,
    40,_LR_STOP,
    38,41,42,39,_LR_STOP,
    43,_LR_STOP,
    41,44,_LR_STOP,
    31,_LR_STOP,
    45,46,47,27,4,_LR_STOP,
    48,46,47,27,4,_LR_STOP,
    49,34,_LR_STOP,
    50,34,_LR_STOP,
    51,_LR_STOP,
    52,34,_LR_STOP,
    53,34,_LR_STOP,
    54,55,_LR_STOP,
    56,_LR_STOP,
    57,34,_LR_STOP,
    58,34,_LR_STOP,
    59,34,_LR_STOP,
    54,46,60,27,4,_LR_STOP,
    54,46,61,27,4,_LR_STOP,
    54,62,41,34,_LR_STOP,
    63,34,_LR_STOP,
    64,34,_LR_STOP,
    41,42,32,25,_LR_STOP,
    8,_LR_STOP,
    65,_LR_STOP,
    66,37,_LR_STOP,
    67,_LR_STOP,
    68,_LR_STOP,
    22,69,_LR_STOP,
    66,41,34,_LR_STOP,
    66,70,71,41,42,34,_LR_STOP,
    20,21,29,_LR_STOP,
    72,25,_LR_STOP,
    25,_LR_STOP,
    66,70,41,34,_LR_STOP,
    73,_LR_STOP,
    74,_LR_STOP,
    46,47,27,4,_LR_STOP,
    41,67,_LR_STOP,
    41,75,_LR_STOP,
    76,26,27,4,28,_LR_STOP,
    77,41,34,_LR_STOP,
    78,_LR_STOP,
    79,80,_LR_STOP,
    81,_LR_STOP,
    34,32,25,_LR_STOP,
    69,_LR_STOP,
    15,17,19,10,_LR_STOP,
    82,10,_LR_STOP
};

static HOOK *_LR_module [83] = {
    check_that_http_is_active,
    initialise_master_thread,
    check_if_ftp_enabled,
    open_master_socket,
    wait_for_socket_input,
    resolve_ip_virtual_host,
    initialise_client_thread,
    check_client_ip_allowed,
    write_service_ready,
    write_service_unavailable,
    terminate_the_thread,
    load_virtual_hosts,
    check_rootdir_exists,
    accept_client_connection,
    reload_config_if_needed,
    free_all_server_resources,
    kill_all_active_connections,
    prepare_to_close_master_socket,
    wait_for_connections_to_close,
    close_master_socket,
    read_ftp_request,
    check_if_more_input,
    flush_time_out,
    dialog_return,
    write_time_out_message,
    check_socket_type,
    set_time_out,
    prepare_to_get_input,
    dialog_call,
    get_ftp_command,
    resolve_user_virtual_host,
    check_user_profile,
    write_closing_connection,
    write_help_message,
    write_return_message,
    write_unsupported_command,
    write_invalid_command,
    write_unexpected_command,
    initialise_user_session,
    write_user_logged_in,
    check_user_password,
    write_entry_to_logfile,
    check_user_quotas,
    sleep_after_failed_password,
    write_invalid_password,
    make_full_directory_listing,
    check_ready_for_file_transfer,
    send_put_data_file_request,
    make_brief_directory_listing,
    make_new_directory,
    remove_directory,
    write_name_of_system,
    set_representation_type,
    set_structure_type,
    make_file_name,
    check_if_file_exists,
    write_working_directory,
    change_current_directory,
    directory_move_up,
    set_restart_position,
    send_get_data_file_request,
    send_append_data_file_request,
    delete_the_file,
    set_stream_mode,
    get_data_port,
    open_passive_data_connection,
    check_if_temporary_file,
    write_user_not_authorised,
    write_user_over_quota,
    write_data_connected,
    set_transfer_ended,
    get_uploaded_file_size,
    signal_socket_error,
    send_abort_to_data_connection,
    write_transfer_aborted,
    write_file_not_found,
    write_pending_action,
    rename_the_file,
    write_file_size,
    make_open_passive_message,
    write_open_passive_okay,
    write_open_passive_failed,
    cancel_data_thread
};

#if (defined (DEBUG))
static char *_LR_mname [83] =
{
     "Check-That-Http-Is-Active",
     "Initialise-Master-Thread",
     "Check-If-Ftp-Enabled",
     "Open-Master-Socket",
     "Wait-For-Socket-Input",
     "Resolve-Ip-Virtual-Host",
     "Initialise-Client-Thread",
     "Check-Client-Ip-Allowed",
     "Write-Service-Ready",
     "Write-Service-Unavailable",
     "Terminate-The-Thread",
     "Load-Virtual-Hosts",
     "Check-Rootdir-Exists",
     "Accept-Client-Connection",
     "Reload-Config-If-Needed",
     "Free-All-Server-Resources",
     "Kill-All-Active-Connections",
     "Prepare-To-Close-Master-Socket",
     "Wait-For-Connections-To-Close",
     "Close-Master-Socket",
     "Read-Ftp-Request",
     "Check-If-More-Input",
     "Flush-Time-Out",
     "Dialog-Return",
     "Write-Time-Out-Message",
     "Check-Socket-Type",
     "Set-Time-Out",
     "Prepare-To-Get-Input",
     "Dialog-Call",
     "Get-Ftp-Command",
     "Resolve-User-Virtual-Host",
     "Check-User-Profile",
     "Write-Closing-Connection",
     "Write-Help-Message",
     "Write-Return-Message",
     "Write-Unsupported-Command",
     "Write-Invalid-Command",
     "Write-Unexpected-Command",
     "Initialise-User-Session",
     "Write-User-Logged-In",
     "Check-User-Password",
     "Write-Entry-To-Logfile",
     "Check-User-Quotas",
     "Sleep-After-Failed-Password",
     "Write-Invalid-Password",
     "Make-Full-Directory-Listing",
     "Check-Ready-For-File-Transfer",
     "Send-Put-Data-File-Request",
     "Make-Brief-Directory-Listing",
     "Make-New-Directory",
     "Remove-Directory",
     "Write-Name-Of-System",
     "Set-Representation-Type",
     "Set-Structure-Type",
     "Make-File-Name",
     "Check-If-File-Exists",
     "Write-Working-Directory",
     "Change-Current-Directory",
     "Directory-Move-Up",
     "Set-Restart-Position",
     "Send-Get-Data-File-Request",
     "Send-Append-Data-File-Request",
     "Delete-The-File",
     "Set-Stream-Mode",
     "Get-Data-Port",
     "Open-Passive-Data-Connection",
     "Check-If-Temporary-File",
     "Write-User-Not-Authorised",
     "Write-User-Over-Quota",
     "Write-Data-Connected",
     "Set-Transfer-Ended",
     "Get-Uploaded-File-Size",
     "Signal-Socket-Error",
     "Send-Abort-To-Data-Connection",
     "Write-Transfer-Aborted",
     "Write-File-Not-Found",
     "Write-Pending-Action",
     "Rename-The-File",
     "Write-File-Size",
     "Make-Open-Passive-Message",
     "Write-Open-Passive-Okay",
     "Write-Open-Passive-Failed",
     "Cancel-Data-Thread"
};

static char *_LR_sname [28] =
{
     "After-Init",
     "Master-Startup",
     "Master-Disabled",
     "Master-Input",
     "Master-Restart",
     "Client-Input",
     "Before-User",
     "Expect-User",
     "Have-User",
     "Before-Password",
     "Expect-Password",
     "Have-Password",
     "Failed-Password",
     "Before-Password-Fake",
     "Expect-Password-Fake",
     "Before-Command",
     "Expect-Command",
     "Uploading-File",
     "Downloading-File",
     "Transfer-Command",
     "Aborting-Transfer",
     "Check-File-To-Download",
     "Check-File-To-Rename",
     "Expect-Rename-To",
     "Check-File-For-Size",
     "After-Open-Passive",
     "Defaults",
     "End-Thread"
};

static char *_LR_ename [56] =
{
     "Abort-Event",
     "Aborted-Event",
     "Append-Event",
     "Cancel-Event",
     "Cdup-Event",
     "Client-Event",
     "Connected-Event",
     "Cwd-Event",
     "Delete-Event",
     "Disabled-Event",
     "End-Event",
     "Error-Event",
     "Exception-Event",
     "Help-Event",
     "Input-Ok-Event",
     "Invalid-Event",
     "Invalid-Vhost-Event",
     "List-Event",
     "Master-Event",
     "Mkdir-Event",
     "Mode-Event",
     "Names-Event",
     "No-Rootdir-Event",
     "Noop-Event",
     "Not-Found-Event",
     "Not-Protected-Event",
     "Ok-Event",
     "Over-Quota-Event",
     "Passive-Event",
     "Password-Event",
     "Port-Event",
     "Pwd-Event",
     "Quit-Event",
     "Reinit-Event",
     "Reload-Event",
     "Rename-From-Event",
     "Rename-To-Event",
     "Restart-Event",
     "Retrieve-Event",
     "Return-Event",
     "Rmdir-Event",
     "Shutdown-Event",
     "Size-Event",
     "Sock-Closed-Event",
     "Sock-Error-Event",
     "Sock-Retry-Event",
     "Sock-Timeout-Event",
     "Store-Event",
     "Structure-Event",
     "System-Event",
     "Timeout-Event",
     "Type-Event",
     "Unauthorised-Event",
     "Unexpected-Event",
     "Unsupported-Event",
     "User-Event"
};
#else
static char *_LR_mname [83] =
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
     "44",
     "45",
     "46",
     "47",
     "48",
     "49",
     "50",
     "51",
     "52",
     "53",
     "54",
     "55",
     "56",
     "57",
     "58",
     "59",
     "60",
     "61",
     "62",
     "63",
     "64",
     "65",
     "66",
     "67",
     "68",
     "69",
     "70",
     "71",
     "72",
     "73",
     "74",
     "75",
     "76",
     "77",
     "78",
     "79",
     "80",
     "81",
     "82"
};

static char *_LR_sname [28] =
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
     "27"
};

static char *_LR_ename [56] =
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
     "44",
     "45",
     "46",
     "47",
     "48",
     "49",
     "50",
     "51",
     "52",
     "53",
     "54",
     "55"
};
#endif

MODULE dialog_call (THREAD *thread)
{
    if (thread-> LR_stack_size < 20)
        thread-> LR_stack [thread-> LR_stack_size++] = thread-> LR_state;
    else
      {
        fprintf (stdout,
            "State %d - Dialog-Call overflow\n", thread-> LR_state);
        exit (EXIT_FAILURE);
      }
}

MODULE dialog_return (THREAD *thread)
{
    if (thread-> LR_stack_size > 0)
      {
        thread-> LR_state = thread-> LR_stack [--(thread-> LR_stack_size)];
        raise_exception (return_event);
      }
    else
      {
        fprintf (stdout,
            "State %d - Dialog-Return underflow\n", thread-> LR_state);
        exit (EXIT_FAILURE);
      }
}
