/*---------------------------------------------------------------------------*
 *  xiimap.d - LIBERO dialog data definitions for xiimap.c.                  *
 *  Generated by LIBERO 2.30 on  5 Dec, 1999, 14:17.                         *
 *  Schema file used: smtschm.c.                                             *
 *---------------------------------------------------------------------------*/

/*- Symbolic constants and event numbers ------------------------------------*/

#define _LR_STOP                        0xFFFFL
#define _LR_NULL_EVENT                  -2
#define _LR_NULL_STATE                  -1
#define terminate_event                 -1
#define exception_event                 0
#define ok_event                        1
#define request_event                   2
#define shutdown_event                  3
#define _LR_STATE_after_init            0
#define _LR_STATE_expect_request        1
#define _LR_STATE_have_request          2
#define _LR_STATE_defaults              3
#define _LR_defaults_state              3


/*- Function prototypes and macros ------------------------------------------*/

#ifndef MODULE
#define MODULE  static void             /*  Libero dialog modules            */
#endif

MODULE initialise_the_thread        (THREAD *thread);
MODULE decode_wsx_request           (THREAD *thread);
MODULE return_url_from_image_map    (THREAD *thread);
MODULE free_wsx_request             (THREAD *thread);
MODULE terminate_the_thread         (THREAD *thread);

#define the_next_event              _the_next_event
#define the_exception_event         _the_exception_event
#define the_external_event          _the_external_event
#define exception_raised            _exception_raised
#define io_completed                _io_completed


/*- Static areas shared by all threads --------------------------------------*/

static word _LR_nextst [4][4] =
{
    { 0,1,0,0 },
    { 0,0,2,0 },
    { 0,1,0,0 },
    { 1,0,0,3 }
};

static word _LR_action [4][4] =
{
    { 0,1,0,0 },
    { 0,0,2,0 },
    { 0,3,0,0 },
    { 1,0,0,4 }
};

static word _LR_offset [] =
{
    0,
    0,
    1,
    3,
    6
};

static word _LR_vector [] =
{
    _LR_STOP,
    0,_LR_STOP,
    1,2,_LR_STOP,
    3,_LR_STOP
};

static HOOK *_LR_module [4] = {
    decode_wsx_request,
    return_url_from_image_map,
    free_wsx_request,
    terminate_the_thread
};

#if (defined (DEBUG))
static char *_LR_mname [4] =
{
     "Decode-Wsx-Request",
     "Return-Url-From-Image-Map",
     "Free-Wsx-Request",
     "Terminate-The-Thread"
};

static char *_LR_sname [4] =
{
     "After-Init",
     "Expect-Request",
     "Have-Request",
     "Defaults"
};

static char *_LR_ename [4] =
{
     "Exception-Event",
     "Ok-Event",
     "Request-Event",
     "Shutdown-Event"
};
#else
static char *_LR_mname [4] =
{
     "0",
     "1",
     "2",
     "3"
};

static char *_LR_sname [4] =
{
     "0",
     "1",
     "2",
     "3"
};

static char *_LR_ename [4] =
{
     "0",
     "1",
     "2",
     "3"
};
#endif
