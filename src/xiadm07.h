/*---------------------------------------------------------------------------
 *  xiadm07.h - HTML form definition
 *
 *  Generated 2000/04/01, 16:13:44 by fxgen 2.0
 *  See Studio on-line help pages at <http://www.imatix.com>.
 *---------------------------------------------------------------------------*/

#ifndef __FORM_XIADM07__
#define __FORM_XIADM07__

#include "sfl.h"
#include "formio.h"


/*  Constants defining size of tables, etc.                                  */

#define XIADM07_MESSAGE_TO_USER             0
#define XIADM07_ON_WINDOWS_32               1
#define XIADM07_ON_UNIX                     2
#define XIADM07_L_FILENAME                  3
#define XIADM07_FILENAME                    4
#define XIADM07_L_PASSWORD_CASE             5
#define XIADM07_PASSWORD_CASE               6
#define XIADM07_L_DIRLIST                   7
#define XIADM07_DIRLIST                     8
#define XIADM07_L_ADMIN                     9
#define XIADM07_ADMIN                       10
#define XIADM07_L_WEBMASK                   11
#define XIADM07_WEBMASK                     12
#define XIADM07_L_SUPERUSER                 13
#define XIADM07_SUPERUSER                   14
#define XIADM07_L_SAFEPATHS                 15
#define XIADM07_SAFEPATHS                   16
#define XIADM07_L_SECURE                    17
#define XIADM07_SECURE                      18
#define XIADM07_L_CGI_USERNAME              19
#define XIADM07_CGI_USERNAME                20
#define XIADM07_L_CGI_GROUPNAME             21
#define XIADM07_CGI_GROUPNAME               22
#define XIADM07_L_CGI_PASSWORD              23
#define XIADM07_CGI_PASSWORD                24
#define XIADM07_L_SETUID                    25
#define XIADM07_SETUID                      26
#define XIADM07_L_SETUID_USER               27
#define XIADM07_SETUID_USER                 28
#define XIADM07_L_SETUID_GROUP              29
#define XIADM07_SETUID_GROUP                30

/*  This table contains each block in the form                               */

static byte xiadm07_blocks [] = {
    /*  <HTML>                                                               */
    0, 8, 0, '<', 'H', 'T', 'M', 'L', '>', 10,
    /*  <HEAD><TITLE>Xitami Administration</TITLE></HEAD>                    */
    0, 51, 0, '<', 'H', 'E', 'A', 'D', '>', '<', 'T', 'I', 'T', 'L',
    'E', '>', 'X', 'i', 't', 'a', 'm', 'i', 32, 'A', 'd', 'm', 'i', 'n',
    'i', 's', 't', 'r', 'a', 't', 'i', 'o', 'n', '<', '/', 'T', 'I',
    'T', 'L', 'E', '>', '<', '/', 'H', 'E', 'A', 'D', '>', 10,
    /*  <BODY onLoad="focus()" BGCOLOR="#87CEFA">                            */
    0, 43, 0, '<', 'B', 'O', 'D', 'Y', 32, 'o', 'n', 'L', 'o', 'a', 'd',
    '=', '"', 'f', 'o', 'c', 'u', 's', '(', ')', '"', 32, 'B', 'G', 'C',
    'O', 'L', 'O', 'R', '=', '"', '#', '8', '7', 'C', 'E', 'F', 'A',
    '"', '>', 10,
    /*  <SCRIPT LANGUAGE="JavaScript"><!--                                   */
    0, 36, 0, '<', 'S', 'C', 'R', 'I', 'P', 'T', 32, 'L', 'A', 'N', 'G',
    'U', 'A', 'G', 'E', '=', '"', 'J', 'a', 'v', 'a', 'S', 'c', 'r',
    'i', 'p', 't', '"', '>', '<', '!', 45, 45, 10,
    /*  function show(img,show) {    ... bmit();    }}// --></SCRIPT>        */
    1, 157, 0, 'f', 'u', 'n', 'c', 't', 'i', 'o', 'n', 32, 's', 'h',
    'o', 'w', '(', 'i', 'm', 'g', ',', 's', 'h', 'o', 'w', ')', 32, '{',
    10, 10, 32, 32, 32, 32, 'i', 'f', 32, '(', 'd', 'o', 'c', 'u', 'm',
    'e', 'n', 't', '.', 'i', 'm', 'a', 'g', 'e', 's', ')', 10, 10, 32,
    32, 32, 32, 32, 32, 32, 32, 'd', 'o', 'c', 'u', 'm', 'e', 'n', 't',
    '[', 'i', 'm', 'g', ']', '.', 's', 'r', 'c', 32, '=', 32, 's', 'h',
    'o', 'w', ';', 10, 10, '}', 10, 10, 'f', 'u', 'n', 'c', 't', 'i',
    'o', 'n', 32, 's', 'u', 'b', 'm', 'i', 't', '(', 'a', 'r', 'g', 'u',
    'm', 'e', 'n', 't', 's', ')', 32, '{', 10, 10, 32, 32, 32, 32, 'd',
    'o', 'c', 'u', 'm', 'e', 'n', 't', '.', 'f', 'o', 'r', 'm', 's',
    '[', '0', ']', '.', 'j', 's', 'a', 'c', 't', 'i', 'o', 'n', '.',
    'v', 'a', 'l', 'u', 'e', 32, '=', 32, 'a', 'r', 'g', 'u', 'm', 'e',
    'n', 't', 's', ';', 10, 10, 32, 32, 32, 32, 'd', 'o', 'c', 'u', 'm',
    'e', 'n', 't', '.', 'f', 'o', 'r', 'm', 's', '[', '0', ']', '.',
    's', 'u', 'b', 'm', 'i', 't', '(', ')', ';', 10, 10, '}', 10, 10,
    'f', 'u', 'n', 'c', 't', 'i', 'o', 'n', 32, 's', 'u', 'b', 'c', 'o',
    'n', 'f', '(', 'a', 'r', 'g', 'u', 'm', 'e', 'n', 't', 's', ',',
    'm', 'e', 's', 's', 'a', 'g', 'e', ')', 32, '{', 10, 10, 32, 32, 32,
    32, 'i', 'f', 32, '(', 'm', 'e', 's', 's', 'a', 'g', 'e', 32, '=',
    '=', 32, 39, 39, 32, '|', '|', 32, 'c', 'o', 'n', 'f', 'i', 'r',
    'm', 32, '(', 'm', 'e', 's', 's', 'a', 'g', 'e', ')', ')', 32, '{',
    10, 10, 32, 32, 32, 32, 32, 32, 32, 32, 'd', 'o', 'c', 'u', 'm',
    'e', 'n', 't', '.', 'f', 'o', 'r', 'm', 's', '[', '0', ']', '.',
    'j', 's', 'a', 'c', 't', 'i', 'o', 'n', '.', 'v', 'a', 'l', 'u',
    'e', 32, '=', 32, 'a', 'r', 'g', 'u', 'm', 'e', 'n', 't', 's', ';',
    10, 10, 32, 32, 32, 32, 32, 32, 32, 32, 'd', 'o', 'c', 'u', 'm',
    'e', 'n', 't', '.', 'f', 'o', 'r', 'm', 's', '[', '0', ']', '.',
    's', 'u', 'b', 'm', 'i', 't', '(', ')', ';', 10, 10, 32, 32, 32, 32,
    '}', 10, 10, '}', 10, 10, '/', '/', 32, 45, 45, '>', '<', '/', 'S',
    'C', 'R', 'I', 'P', 'T', '>', 10,
    /*  <TABLE CELLSPACING=0 CELLPADDING=0 WIDTH=100%>                       */
    0, 48, 0, '<', 'T', 'A', 'B', 'L', 'E', 32, 'C', 'E', 'L', 'L', 'S',
    'P', 'A', 'C', 'I', 'N', 'G', '=', '0', 32, 'C', 'E', 'L', 'L', 'P',
    'A', 'D', 'D', 'I', 'N', 'G', '=', '0', 32, 'W', 'I', 'D', 'T', 'H',
    '=', '1', '0', '0', '%', '>', 10,
    /*  <FORM METHOD=POST ACTION="#(proto)#(host)#(uri)">                    */
    0, 51, 0, '<', 'F', 'O', 'R', 'M', 32, 'M', 'E', 'T', 'H', 'O', 'D',
    '=', 'P', 'O', 'S', 'T', 32, 'A', 'C', 'T', 'I', 'O', 'N', '=', '"',
    '#', '(', 'p', 'r', 'o', 't', 'o', ')', '#', '(', 'h', 'o', 's',
    't', ')', '#', '(', 'u', 'r', 'i', ')', '"', '>', 10,
    /*  <INPUT TYPE=HIDDEN NAME=jsaction VALUE="">                           */
    0, 44, 0, '<', 'I', 'N', 'P', 'U', 'T', 32, 'T', 'Y', 'P', 'E', '=',
    'H', 'I', 'D', 'D', 'E', 'N', 32, 'N', 'A', 'M', 'E', '=', 'j', 's',
    'a', 'c', 't', 'i', 'o', 'n', 32, 'V', 'A', 'L', 'U', 'E', '=', '"',
    '"', '>', 10,
    /*  <TR><TD ALIGN=LEFT>                                                  */
    0, 21, 0, '<', 'T', 'R', '>', '<', 'T', 'D', 32, 'A', 'L', 'I', 'G',
    'N', '=', 'L', 'E', 'F', 'T', '>', 10,
    /*  <IMG SRC="/admin/$left.gif" BORDER=0 ALIGN=MIDDLE>                   */
    0, 51, 0, '<', 'I', 'M', 'G', 32, 'S', 'R', 'C', '=', '"', '/', 'a',
    'd', 'm', 'i', 'n', '/', '$', 'l', 'e', 'f', 't', '.', 'g', 'i',
    'f', '"', 32, 'B', 'O', 'R', 'D', 'E', 'R', '=', '0', 32, 'A', 'L',
    'I', 'G', 'N', '=', 'M', 'I', 'D', 'D', 'L', 'E', '>',
    /*  !--ACTION back  LABEL="/admi ...  ROLLOVER="/admin/backa.gif"        */
    0, 52, 20, 2, 1, (byte) ((word) back_event / 256), (byte) ((word)
    back_event & 255), 0, 0, 0, 0, 39, 0, '(', 'b', 'a', 'c', 'k', 0,
    '/', 'a', 'd', 'm', 'i', 'n', '/', '$', 'b', 'a', 'c', 'k', '.',
    'g', 'i', 'f', 0, '/', 'a', 'd', 'm', 'i', 'n', '/', 'b', 'a', 'c',
    'k', 'a', '.', 'g', 'i', 'f', 0, 0,
    /*  !--ACTION save  LABEL="/admi ...  ROLLOVER="/admin/savea.gif"        */
    0, 52, 20, 2, 1, (byte) ((word) save_event / 256), (byte) ((word)
    save_event & 255), 0, 1, 0, 0, 39, 0, '(', 's', 'a', 'v', 'e', 0,
    '/', 'a', 'd', 'm', 'i', 'n', '/', '$', 's', 'a', 'v', 'e', '.',
    'g', 'i', 'f', 0, '/', 'a', 'd', 'm', 'i', 'n', '/', 's', 'a', 'v',
    'e', 'a', '.', 'g', 'i', 'f', 0, 0,
    /*  !--ACTION default  LABEL="/a ... LLOVER="/admin/defaulta.gif"        */
    0, 61, 20, 2, 1, (byte) ((word) default_event / 256), (byte) ((word)
    default_event & 255), 0, 2, 0, 0, 39, 0, '(', 'd', 'e', 'f', 'a',
    'u', 'l', 't', 0, '/', 'a', 'd', 'm', 'i', 'n', '/', '$', 'd', 'e',
    'f', 'a', 'u', 'l', 't', '.', 'g', 'i', 'f', 0, '/', 'a', 'd', 'm',
    'i', 'n', '/', 'd', 'e', 'f', 'a', 'u', 'l', 't', 'a', '.', 'g',
    'i', 'f', 0, 0,
    /*  !--ACTION undo  LABEL="/admi ...  ROLLOVER="/admin/undoa.gif"        */
    0, 52, 20, 2, 1, (byte) ((word) undo_event / 256), (byte) ((word)
    undo_event & 255), 0, 3, 0, 0, 39, 0, '(', 'u', 'n', 'd', 'o', 0,
    '/', 'a', 'd', 'm', 'i', 'n', '/', '$', 'u', 'n', 'd', 'o', '.',
    'g', 'i', 'f', 0, '/', 'a', 'd', 'm', 'i', 'n', '/', 'u', 'n', 'd',
    'o', 'a', '.', 'g', 'i', 'f', 0, 0,
    /*  <A HREF="/xitami/index4.htm# ... " TARGET="Help" TITLE="Help"        */
    0, 73, 0, '<', 'A', 32, 'H', 'R', 'E', 'F', '=', '"', '/', 'x', 'i',
    't', 'a', 'm', 'i', '/', 'i', 'n', 'd', 'e', 'x', '4', '.', 'h',
    't', 'm', '#', 'c', 'o', 'n', 'f', 'i', 'g', '_', 's', 'e', 'c',
    'u', 'r', 'i', 't', 'y', '"', 32, 'T', 'A', 'R', 'G', 'E', 'T', '=',
    '"', 'H', 'e', 'l', 'p', '"', 32, 'T', 'I', 'T', 'L', 'E', '=', '"',
    'H', 'e', 'l', 'p', '"', 10,
    /*  onMouseOver="show('Help','/a ... .gif" BORDER=0 ALIGN=MIDDLE>        */
    0, 238, 0, 'o', 'n', 'M', 'o', 'u', 's', 'e', 'O', 'v', 'e', 'r',
    '=', '"', 's', 'h', 'o', 'w', '(', 39, 'H', 'e', 'l', 'p', 39, ',',
    39, '/', 'a', 'd', 'm', 'i', 'n', '/', 'h', 'e', 'l', 'p', 'a', '.',
    'g', 'i', 'f', 39, ')', '"', 10, 10, 'o', 'n', 'M', 'o', 'u', 's',
    'e', 'O', 'u', 't', '=', '"', 's', 'h', 'o', 'w', '(', 39, 'H', 'e',
    'l', 'p', 39, ',', 39, '/', 'a', 'd', 'm', 'i', 'n', '/', '$', 'h',
    'e', 'l', 'p', '.', 'g', 'i', 'f', 39, ')', '"', '>', '<', 'I', 'M',
    'G', 32, 'S', 'R', 'C', '=', '"', '/', 'a', 'd', 'm', 'i', 'n', '/',
    '$', 'h', 'e', 'l', 'p', '.', 'g', 'i', 'f', '"', 32, 'A', 'L', 'T',
    '=', '"', '"', 32, 'B', 'O', 'R', 'D', 'E', 'R', '=', '0', 32, 'A',
    'L', 'I', 'G', 'N', '=', 'M', 'I', 'D', 'D', 'L', 'E', 32, 'N', 'A',
    'M', 'E', '=', '"', 'H', 'e', 'l', 'p', '"', 10, 10, 'W', 'I', 'D',
    'T', 'H', '=', '4', '0', 32, 'H', 'E', 'I', 'G', 'H', 'T', '=', '3',
    '9', '>', '<', '/', 'A', '>', '<', 'I', 'M', 'G', 32, 'S', 'R', 'C',
    '=', '"', '/', 'a', 'd', 'm', 'i', 'n', '/', '$', 'r', 'i', 'g',
    'h', 't', '.', 'g', 'i', 'f', '"', 32, 'B', 'O', 'R', 'D', 'E', 'R',
    '=', '0', 32, 'A', 'L', 'I', 'G', 'N', '=', 'M', 'I', 'D', 'D', 'L',
    'E', '>', 10,
    /*  <TD ALIGN=CENTER><FONT SIZE= ... fig) - HTTP Security </FONT>        */
    0, 66, 0, '<', 'T', 'D', 32, 'A', 'L', 'I', 'G', 'N', '=', 'C', 'E',
    'N', 'T', 'E', 'R', '>', '<', 'F', 'O', 'N', 'T', 32, 'S', 'I', 'Z',
    'E', '=', '+', '1', '>', '#', '(', 'c', 'o', 'n', 'f', 'i', 'g',
    ')', 32, 45, 32, 'H', 'T', 'T', 'P', 32, 'S', 'e', 'c', 'u', 'r',
    'i', 't', 'y', 32, '<', '/', 'F', 'O', 'N', 'T', '>', 10,
    /*  <TD ALIGN=RIGHT>                                                     */
    0, 18, 0, '<', 'T', 'D', 32, 'A', 'L', 'I', 'G', 'N', '=', 'R', 'I',
    'G', 'H', 'T', '>', 10,
    /*  <IMG SRC="/admin/$left.gif" BORDER=0 ALIGN=MIDDLE>                   */
    0, 4, 1, 0, 2, 221,
    /*  !--ACTION console  LABEL="/a ... LLOVER="/admin/consolea.gif"        */
    0, 61, 20, 2, 1, (byte) ((word) console_event / 256), (byte) ((word)
    console_event & 255), 0, 4, 0, 0, 39, 0, '(', 'c', 'o', 'n', 's',
    'o', 'l', 'e', 0, '/', 'a', 'd', 'm', 'i', 'n', '/', '$', 'c', 'o',
    'n', 's', 'o', 'l', 'e', '.', 'g', 'i', 'f', 0, '/', 'a', 'd', 'm',
    'i', 'n', '/', 'c', 'o', 'n', 's', 'o', 'l', 'e', 'a', '.', 'g',
    'i', 'f', 0, 0,
    /*  !--ACTION halt  LABEL="/admi ...  ROLLOVER="/admin/halta.gif"        */
    0, 52, 20, 2, 1, (byte) ((word) halt_event / 256), (byte) ((word)
    halt_event & 255), 0, 5, 0, 0, 39, 0, '(', 'h', 'a', 'l', 't', 0,
    '/', 'a', 'd', 'm', 'i', 'n', '/', '$', 'h', 'a', 'l', 't', '.',
    'g', 'i', 'f', 0, '/', 'a', 'd', 'm', 'i', 'n', '/', 'h', 'a', 'l',
    't', 'a', '.', 'g', 'i', 'f', 0, 0,
    /*  !--ACTION restart  LABEL="/a ... LLOVER="/admin/restarta.gif"        */
    0, 61, 20, 2, 1, (byte) ((word) restart_event / 256), (byte) ((word)
    restart_event & 255), 0, 6, 0, 0, 39, 0, '(', 'r', 'e', 's', 't',
    'a', 'r', 't', 0, '/', 'a', 'd', 'm', 'i', 'n', '/', '$', 'r', 'e',
    's', 't', 'a', 'r', 't', '.', 'g', 'i', 'f', 0, '/', 'a', 'd', 'm',
    'i', 'n', '/', 'r', 'e', 's', 't', 'a', 'r', 't', 'a', '.', 'g',
    'i', 'f', 0, 0,
    /*  !--ACTION exit  LABEL="/admi ...  ROLLOVER="/admin/exita.gif"        */
    0, 52, 20, 2, 1, (byte) ((word) exit_event / 256), (byte) ((word)
    exit_event & 255), 0, 7, 0, 0, 39, 0, '(', 'e', 'x', 'i', 't', 0,
    '/', 'a', 'd', 'm', 'i', 'n', '/', '$', 'e', 'x', 'i', 't', '.',
    'g', 'i', 'f', 0, '/', 'a', 'd', 'm', 'i', 'n', '/', 'e', 'x', 'i',
    't', 'a', '.', 'g', 'i', 'f', 0, 0,
    /*  <IMG SRC="/admin/$right.gif" BORDER=0 ALIGN=MIDDLE>                  */
    0, 53, 0, '<', 'I', 'M', 'G', 32, 'S', 'R', 'C', '=', '"', '/', 'a',
    'd', 'm', 'i', 'n', '/', '$', 'r', 'i', 'g', 'h', 't', '.', 'g',
    'i', 'f', '"', 32, 'B', 'O', 'R', 'D', 'E', 'R', '=', '0', 32, 'A',
    'L', 'I', 'G', 'N', '=', 'M', 'I', 'D', 'D', 'L', 'E', '>', 10,
    /*  </TABLE>                                                             */
    0, 10, 0, '<', '/', 'T', 'A', 'B', 'L', 'E', '>', 10,
    /*  <TABLE WIDTH=100%><TR><TD ALIGN=LEFT>                                */
    0, 39, 0, '<', 'T', 'A', 'B', 'L', 'E', 32, 'W', 'I', 'D', 'T', 'H',
    '=', '1', '0', '0', '%', '>', '<', 'T', 'R', '>', '<', 'T', 'D', 32,
    'A', 'L', 'I', 'G', 'N', '=', 'L', 'E', 'F', 'T', '>', 10,
    /*  !--IF message_to_user                                                */
    0, 5, 2, 0, 0, 0, 3,
    /*  <FONT COLOR="#E00000" SIZE=+1><EM>                                   */
    0, 36, 0, '<', 'F', 'O', 'N', 'T', 32, 'C', 'O', 'L', 'O', 'R', '=',
    '"', '#', 'E', '0', '0', '0', '0', '0', '"', 32, 'S', 'I', 'Z', 'E',
    '=', '+', '1', '>', '<', 'E', 'M', '>', 10,
    /*  !--FIELD TEXTUAL message_to_user SIZE=80                             */
    0, 25, 10, 9, 1, 0, 0, 'P', 0, 'P', 'm', 'e', 's', 's', 'a', 'g',
    'e', '_', 't', 'o', '_', 'u', 's', 'e', 'r', 0, 0,
    /*  </EM></FONT>                                                         */
    0, 14, 0, '<', '/', 'E', 'M', '>', '<', '/', 'F', 'O', 'N', 'T',
    '>', 10,
    /*  <TD ALIGN=RIGHT>                                                     */
    0, 4, 1, 0, 5, 'r',
    /*  </TABLE>                                                             */
    0, 4, 1, 0, 6, 173,
    /*  <TABLE CELLSPACING=0 CELLPADDING=0 WIDTH=100%><TR>                   */
    0, 52, 0, '<', 'T', 'A', 'B', 'L', 'E', 32, 'C', 'E', 'L', 'L', 'S',
    'P', 'A', 'C', 'I', 'N', 'G', '=', '0', 32, 'C', 'E', 'L', 'L', 'P',
    'A', 'D', 'D', 'I', 'N', 'G', '=', '0', 32, 'W', 'I', 'D', 'T', 'H',
    '=', '1', '0', '0', '%', '>', '<', 'T', 'R', '>', 10,
    /*  <TD ALIGN=LEFT><FONT SIZE=-1>                                        */
    0, 31, 0, '<', 'T', 'D', 32, 'A', 'L', 'I', 'G', 'N', '=', 'L', 'E',
    'F', 'T', '>', '<', 'F', 'O', 'N', 'T', 32, 'S', 'I', 'Z', 'E', '=',
    45, '1', '>', 10,
    /*  !--ACTION passwords  LABEL=" ... event CONFIRM="" TYPE=PLAIN         */
    0, 34, 20, 1, 1, (byte) ((word) passwords_event / 256), (byte)
    ((word) passwords_event & 255), 0, 8, 0, 0, 0, 0, 0, 'p', 'a', 's',
    's', 'w', 'o', 'r', 'd', 's', 0, 'P', 'a', 's', 's', 'w', 'o', 'r',
    'd', 's', 0, 0, 0,
    /*  <TD ALIGN=RIGHT><FONT SIZE=-1>                                       */
    0, 32, 0, '<', 'T', 'D', 32, 'A', 'L', 'I', 'G', 'N', '=', 'R', 'I',
    'G', 'H', 'T', '>', '<', 'F', 'O', 'N', 'T', 32, 'S', 'I', 'Z', 'E',
    '=', 45, '1', '>', 10,
    /*  !--ACTION server  LABEL="Ser ... event CONFIRM="" TYPE=PLAIN         */
    0, 28, 20, 1, 1, (byte) ((word) server_event / 256), (byte) ((word)
    server_event & 255), 0, 9, 0, 0, 0, 0, 0, 's', 'e', 'r', 'v', 'e',
    'r', 0, 'S', 'e', 'r', 'v', 'e', 'r', 0, 0, 0,
    /*  !--ACTION vhosts  LABEL="Vho ... event CONFIRM="" TYPE=PLAIN         */
    0, 28, 20, 1, 1, (byte) ((word) vhosts_event / 256), (byte) ((word)
    vhosts_event & 255), 0, 10, 0, 0, 0, 0, 0, 'v', 'h', 'o', 's', 't',
    's', 0, 'V', 'h', 'o', 's', 't', 's', 0, 0, 0,
    /*  !--ACTION cgi  LABEL="CGI" E ... event CONFIRM="" TYPE=PLAIN         */
    0, 22, 20, 1, 1, (byte) ((word) cgi_event / 256), (byte) ((word)
    cgi_event & 255), 0, 11, 0, 0, 0, 0, 0, 'c', 'g', 'i', 0, 'C', 'G',
    'I', 0, 0, 0,
    /*  <EM>Security</EM>                                                    */
    0, 19, 0, '<', 'E', 'M', '>', 'S', 'e', 'c', 'u', 'r', 'i', 't',
    'y', '<', '/', 'E', 'M', '>', 10,
    /*  !--ACTION logging  LABEL="Lo ... event CONFIRM="" TYPE=PLAIN         */
    0, 30, 20, 1, 1, (byte) ((word) logging_event / 256), (byte) ((word)
    logging_event & 255), 0, 12, 0, 0, 0, 0, 0, 'l', 'o', 'g', 'g', 'i',
    'n', 'g', 0, 'L', 'o', 'g', 'g', 'i', 'n', 'g', 0, 0, 0,
    /*  !--ACTION ftp  LABEL="FTP" E ... event CONFIRM="" TYPE=PLAIN         */
    0, 22, 20, 1, 1, (byte) ((word) ftp_event / 256), (byte) ((word)
    ftp_event & 255), 0, 13, 0, 0, 0, 0, 0, 'f', 't', 'p', 0, 'F', 'T',
    'P', 0, 0, 0,
    /*  </FONT></TABLE><HR>                                                  */
    0, 21, 0, '<', '/', 'F', 'O', 'N', 'T', '>', '<', '/', 'T', 'A',
    'B', 'L', 'E', '>', '<', 'H', 'R', '>', 10,
    /*  !--FIELD NUMERIC on_windows_32 SIZE=4 VALUE=1                        */
    0, 29, 11, 5, 1, 0, 4, 0, 4, 0, 0, 0, 0, 0, 0, 'o', 'n', '_', 'w',
    'i', 'n', 'd', 'o', 'w', 's', '_', '3', '2', 0, '1', 0,
    /*  !--FIELD NUMERIC on_unix SIZE=4 VALUE=1                              */
    0, 23, 11, 5, 1, 0, 4, 0, 4, 0, 0, 0, 0, 0, 0, 'o', 'n', '_', 'u',
    'n', 'i', 'x', 0, '1', 0,
    /*  <TABLE WIDTH="100%">                                                 */
    0, 22, 0, '<', 'T', 'A', 'B', 'L', 'E', 32, 'W', 'I', 'D', 'T', 'H',
    '=', '"', '1', '0', '0', '%', '"', '>', 10,
    /*  <TR><TD ALIGN=LEFT VALIGN=TOP NOWRAP>                                */
    0, 39, 0, '<', 'T', 'R', '>', '<', 'T', 'D', 32, 'A', 'L', 'I', 'G',
    'N', '=', 'L', 'E', 'F', 'T', 32, 'V', 'A', 'L', 'I', 'G', 'N', '=',
    'T', 'O', 'P', 32, 'N', 'O', 'W', 'R', 'A', 'P', '>', 10,
    /*  !--FIELD TEXTUAL f93 NAME=L_ ... Password file:&nbsp;&nbsp;"         */
    0, 39, 10, 6, 1, 0, 0, 26, 0, 26, 'f', '9', '3', 0, 'P', 'a', 's',
    's', 'w', 'o', 'r', 'd', 32, 'f', 'i', 'l', 'e', ':', '&', 'n', 'b',
    's', 'p', ';', '&', 'n', 'b', 's', 'p', ';', 0,
    /*  </TD><TD ALIGN=LEFT WIDTH=""80%"">                                   */
    0, 36, 0, '<', '/', 'T', 'D', '>', '<', 'T', 'D', 32, 'A', 'L', 'I',
    'G', 'N', '=', 'L', 'E', 'F', 'T', 32, 'W', 'I', 'D', 'T', 'H', '=',
    '"', '"', '8', '0', '%', '"', '"', '>', 10,
    /*  !--FIELD TEXTUAL f94 NAME=fi ... =20 MAX=80 UPPER=0 VALUE=""         */
    0, 13, 10, 0, 1, 0, 0, 20, 0, 'P', 'f', '9', '4', 0, 0,
    /*  - blank to disable password protection                               */
    0, 40, 0, 45, 32, 'b', 'l', 'a', 'n', 'k', 32, 't', 'o', 32, 'd',
    'i', 's', 'a', 'b', 'l', 'e', 32, 'p', 'a', 's', 's', 'w', 'o', 'r',
    'd', 32, 'p', 'r', 'o', 't', 'e', 'c', 't', 'i', 'o', 'n', 10,
    /*  </TD></TR>                                                           */
    0, 12, 0, '<', '/', 'T', 'D', '>', '<', '/', 'T', 'R', '>', 10,
    /*  <TR><TD></TD><TD ALIGN=LEFT WIDTH=""80%"">                           */
    0, 44, 0, '<', 'T', 'R', '>', '<', 'T', 'D', '>', '<', '/', 'T',
    'D', '>', '<', 'T', 'D', 32, 'A', 'L', 'I', 'G', 'N', '=', 'L', 'E',
    'F', 'T', 32, 'W', 'I', 'D', 'T', 'H', '=', '"', '"', '8', '0', '%',
    '"', '"', '>', 10,
    /*  !--ACTION define  LABEL="Def ... vent CONFIRM="" TYPE=BUTTON         */
    0, 31, 20, 0, 1, (byte) ((word) passwords_event / 256), (byte)
    ((word) passwords_event & 255), 0, 14, 0, 0, 0, 0, 0, 'd', 'e', 'f',
    'i', 'n', 'e', 0, 'D', 'e', 'f', 'i', 'n', 'e', '.', '.', '.', 0, 0,
    0,
    /*  </TD></TR>                                                           */
    0, 4, 1, 0, 9, 156,
    /*  <TR><TD ALIGN=LEFT VALIGN=TOP NOWRAP>                                */
    0, 4, 1, 0, 8, 235,
    /*  !--FIELD TEXTUAL f95 NAME=L_ ... ive passwords?&nbsp;&nbsp;"         */
    0, 50, 10, 6, 1, 0, 0, '%', 0, '%', 'f', '9', '5', 0, 'C', 'a', 's',
    'e', 45, 's', 'e', 'n', 's', 'i', 't', 'i', 'v', 'e', 32, 'p', 'a',
    's', 's', 'w', 'o', 'r', 'd', 's', '?', '&', 'n', 'b', 's', 'p',
    ';', '&', 'n', 'b', 's', 'p', ';', 0,
    /*  </TD><TD ALIGN=LEFT WIDTH=""80%"">                                   */
    0, 4, 1, 0, 9, '=',
    /*  !--FIELD BOOLEAN f96 NAME=pa ... e TRUE=yes FALSE=no VALUE=0         */
    0, 16, 15, 0, 1, 'f', '9', '6', 0, '0', 0, 'y', 'e', 's', 0, 'n',
    'o', 0,
    /*  </TD></TR>                                                           */
    0, 4, 1, 0, 9, 156,
    /*  <TR><TD ALIGN=LEFT VALIGN=TOP NOWRAP>                                */
    0, 4, 1, 0, 8, 235,
    /*  !--FIELD TEXTUAL f97 NAME=L_ ... rectory lists?&nbsp;&nbsp;"         */
    0, 47, 10, 6, 1, 0, 0, '"', 0, '"', 'f', '9', '7', 0, 'A', 'l', 'l',
    'o', 'w', 32, 'd', 'i', 'r', 'e', 'c', 't', 'o', 'r', 'y', 32, 'l',
    'i', 's', 't', 's', '?', '&', 'n', 'b', 's', 'p', ';', '&', 'n',
    'b', 's', 'p', ';', 0,
    /*  </TD><TD ALIGN=LEFT WIDTH=""80%"">                                   */
    0, 4, 1, 0, 9, '=',
    /*  !--FIELD BOOLEAN f98 NAME=dirlist TRUE=yes FALSE=no VALUE=0          */
    0, 16, 15, 0, 1, 'f', '9', '8', 0, '0', 0, 'y', 'e', 's', 0, 'n',
    'o', 0,
    /*  </TD></TR>                                                           */
    0, 4, 1, 0, 9, 156,
    /*  <TR><TD ALIGN=LEFT VALIGN=TOP NOWRAP>                                */
    0, 4, 1, 0, 8, 235,
    /*  !--FIELD TEXTUAL f99 NAME=L_ ... b-based admin?&nbsp;&nbsp;"         */
    0, 47, 10, 6, 1, 0, 0, '"', 0, '"', 'f', '9', '9', 0, 'A', 'l', 'l',
    'o', 'w', 32, 'w', 'e', 'b', 45, 'b', 'a', 's', 'e', 'd', 32, 'a',
    'd', 'm', 'i', 'n', '?', '&', 'n', 'b', 's', 'p', ';', '&', 'n',
    'b', 's', 'p', ';', 0,
    /*  </TD><TD ALIGN=LEFT WIDTH=""80%"">                                   */
    0, 4, 1, 0, 9, '=',
    /*  !--FIELD BOOLEAN f100 NAME=admin TRUE=yes FALSE=no VALUE=0           */
    0, 17, 15, 0, 1, 'f', '1', '0', '0', 0, '0', 0, 'y', 'e', 's', 0,
    'n', 'o', 0,
    /*  </TD></TR>                                                           */
    0, 4, 1, 0, 9, 156,
    /*  <TR><TD ALIGN=LEFT VALIGN=TOP NOWRAP>                                */
    0, 4, 1, 0, 8, 235,
    /*  !--FIELD TEXTUAL f101 NAME=L ...  address mask:&nbsp;&nbsp;"         */
    0, 42, 10, 6, 1, 0, 0, 28, 0, 28, 'f', '1', '0', '1', 0, 'I', 'P',
    32, 'a', 'd', 'd', 'r', 'e', 's', 's', 32, 'm', 'a', 's', 'k', ':',
    '&', 'n', 'b', 's', 'p', ';', '&', 'n', 'b', 's', 'p', ';', 0,
    /*  </TD><TD ALIGN=LEFT WIDTH=""80%"">                                   */
    0, 4, 1, 0, 9, '=',
    /*  !--FIELD TEXTUAL f102 NAME=w ... =20 MAX=80 UPPER=0 VALUE=""         */
    0, 14, 10, 0, 1, 0, 0, 20, 0, 'P', 'f', '1', '0', '2', 0, 0,
    /*  - eg. 111.222.333.*                                                  */
    0, 21, 0, 45, 32, 'e', 'g', '.', 32, '1', '1', '1', '.', '2', '2',
    '2', '.', '3', '3', '3', '.', '*', 10,
    /*  </TD></TR>                                                           */
    0, 4, 1, 0, 9, 156,
    /*  <TR><TD ALIGN=LEFT VALIGN=TOP NOWRAP>                                */
    0, 4, 1, 0, 8, 235,
    /*  !--FIELD TEXTUAL f103 NAME=L ... user password:&nbsp;&nbsp;"         */
    0, 45, 10, 6, 1, 0, 0, 31, 0, 31, 'f', '1', '0', '3', 0, 'S', 'u',
    'p', 'e', 'r', 'u', 's', 'e', 'r', 32, 'p', 'a', 's', 's', 'w', 'o',
    'r', 'd', ':', '&', 'n', 'b', 's', 'p', ';', '&', 'n', 'b', 's',
    'p', ';', 0,
    /*  </TD><TD ALIGN=LEFT WIDTH=""80%"">                                   */
    0, 4, 1, 0, 9, '=',
    /*  !--FIELD TEXTUAL f104 NAME=s ... E=20 MAX=? UPPER=0 VALUE=""         */
    0, 14, 10, 0, 1, 0, 0, 20, 0, 20, 'f', '1', '0', '4', 0, 0,
    /*  - gives FULL ACCESS to ALL RESOURCES                                 */
    0, 38, 0, 45, 32, 'g', 'i', 'v', 'e', 's', 32, 'F', 'U', 'L', 'L',
    32, 'A', 'C', 'C', 'E', 'S', 'S', 32, 't', 'o', 32, 'A', 'L', 'L',
    32, 'R', 'E', 'S', 'O', 'U', 'R', 'C', 'E', 'S', 10,
    /*  !--IF on_windows_32                                                  */
    0, 5, 2, 0, 1, 0, 10,
    /*  </TD></TR>                                                           */
    0, 4, 1, 0, 9, 156,
    /*  <TR><TD ALIGN=LEFT VALIGN=TOP NOWRAP>                                */
    0, 4, 1, 0, 8, 235,
    /*  !--FIELD TEXTUAL f105 NAME=L ... ort filenames?&nbsp;&nbsp;"         */
    0, 56, 10, 6, 1, 0, 0, '*', 0, '*', 'f', '1', '0', '5', 0, 'R', 'e',
    'j', 'e', 'c', 't', 32, 'u', 'n', 's', 'a', 'f', 'e', 32, 's', 'h',
    'o', 'r', 't', 32, 'f', 'i', 'l', 'e', 'n', 'a', 'm', 'e', 's', '?',
    '&', 'n', 'b', 's', 'p', ';', '&', 'n', 'b', 's', 'p', ';', 0,
    /*  </TD><TD ALIGN=LEFT WIDTH=""80%"">                                   */
    0, 4, 1, 0, 9, '=',
    /*  !--FIELD BOOLEAN f106 NAME=s ... s TRUE=yes FALSE=no VALUE=0         */
    0, 17, 15, 0, 1, 'f', '1', '0', '6', 0, '0', 0, 'y', 'e', 's', 0,
    'n', 'o', 0,
    /*  </TD></TR>                                                           */
    0, 4, 1, 0, 9, 156,
    /*  <TR><TD ALIGN=LEFT VALIGN=TOP NOWRAP>                                */
    0, 4, 1, 0, 8, 235,
    /*  !--FIELD TEXTUAL f107 NAME=L ... control panel?&nbsp;&nbsp;"         */
    0, 56, 10, 6, 1, 0, 0, '*', 0, '*', 'f', '1', '0', '7', 0, 'D', 'i',
    's', 'a', 'b', 'l', 'e', 32, 'W', 'i', 'n', 'd', 'o', 'w', 's', 32,
    'c', 'o', 'n', 't', 'r', 'o', 'l', 32, 'p', 'a', 'n', 'e', 'l', '?',
    '&', 'n', 'b', 's', 'p', ';', '&', 'n', 'b', 's', 'p', ';', 0,
    /*  </TD><TD ALIGN=LEFT WIDTH=""80%"">                                   */
    0, 4, 1, 0, 9, '=',
    /*  !--FIELD BOOLEAN f108 NAME=secure TRUE=yes FALSE=no VALUE=0          */
    0, 17, 15, 0, 1, 'f', '1', '0', '8', 0, '0', 0, 'y', 'e', 's', 0,
    'n', 'o', 0,
    /*  </TD></TR>                                                           */
    0, 4, 1, 0, 9, 156,
    /*  <TR><TD ALIGN=LEFT VALIGN=TOP NOWRAP>                                */
    0, 4, 1, 0, 8, 235,
    /*  !--FIELD TEXTUAL f109 NAME=L ... der user name:&nbsp;&nbsp;"         */
    0, 51, 10, 6, 1, 0, 0, '%', 0, '%', 'f', '1', '0', '9', 0, 'R', 'u',
    'n', 32, 'C', 'G', 'I', 's', 32, 'u', 'n', 'd', 'e', 'r', 32, 'u',
    's', 'e', 'r', 32, 'n', 'a', 'm', 'e', ':', '&', 'n', 'b', 's', 'p',
    ';', '&', 'n', 'b', 's', 'p', ';', 0,
    /*  </TD><TD ALIGN=LEFT WIDTH=""80%"">                                   */
    0, 4, 1, 0, 9, '=',
    /*  !--FIELD TEXTUAL f110 NAME=c ... =10 MAX=30 UPPER=0 VALUE=""         */
    0, 14, 10, 0, 1, 0, 0, 10, 0, 30, 'f', '1', '1', '0', 0, 0,
    /*  !--FIELD TEXTUAL f111 NAME=L ... p;&nbsp;group:&nbsp;&nbsp;"         */
    0, 44, 10, 6, 1, 0, 0, 30, 0, 30, 'f', '1', '1', '1', 0, '&', 'n',
    'b', 's', 'p', ';', '&', 'n', 'b', 's', 'p', ';', 'g', 'r', 'o',
    'u', 'p', ':', '&', 'n', 'b', 's', 'p', ';', '&', 'n', 'b', 's',
    'p', ';', 0,
    /*  !--FIELD TEXTUAL f112 NAME=c ... =10 MAX=30 UPPER=0 VALUE=""         */
    0, 14, 10, 0, 1, 0, 0, 10, 0, 30, 'f', '1', '1', '2', 0, 0,
    /*  !--FIELD TEXTUAL f113 NAME=L ... nbsp;password:&nbsp;&nbsp;"         */
    0, 47, 10, 6, 1, 0, 0, '!', 0, '!', 'f', '1', '1', '3', 0, '&', 'n',
    'b', 's', 'p', ';', '&', 'n', 'b', 's', 'p', ';', 'p', 'a', 's',
    's', 'w', 'o', 'r', 'd', ':', '&', 'n', 'b', 's', 'p', ';', '&',
    'n', 'b', 's', 'p', ';', 0,
    /*  !--FIELD TEXTUAL f114 NAME=c ... =10 MAX=30 UPPER=0 VALUE=""         */
    0, 14, 10, 2, 1, 0, 0, 10, 0, 30, 'f', '1', '1', '4', 0, 0,
    /*  !--IF on_unix                                                        */
    0, 5, 2, 0, 2, 0, 12,
    /*  </TD></TR>                                                           */
    0, 4, 1, 0, 9, 156,
    /*  <TR><TD ALIGN=LEFT VALIGN=TOP NOWRAP>                                */
    0, 4, 1, 0, 8, 235,
    /*  !--FIELD TEXTUAL f115 NAME=L ...  safe user id?&nbsp;&nbsp;"         */
    0, 56, 10, 6, 1, 0, 0, '*', 0, '*', 'f', '1', '1', '5', 0, 'R', 'u',
    'n', 32, 'X', 'i', 't', 'a', 'm', 'i', 32, 'u', 'n', 'd', 'e', 'r',
    32, 's', 'a', 'f', 'e', 32, 'u', 's', 'e', 'r', 32, 'i', 'd', '?',
    '&', 'n', 'b', 's', 'p', ';', '&', 'n', 'b', 's', 'p', ';', 0,
    /*  </TD><TD ALIGN=LEFT WIDTH=""80%"">                                   */
    0, 4, 1, 0, 9, '=',
    /*  !--FIELD BOOLEAN f116 NAME=setuid TRUE=yes FALSE=no VALUE=0          */
    0, 17, 15, 0, 1, 'f', '1', '1', '6', 0, '0', 0, 'y', 'e', 's', 0,
    'n', 'o', 0,
    /*  </TD></TR>                                                           */
    0, 4, 1, 0, 9, 156,
    /*  <TR><TD ALIGN=LEFT VALIGN=TOP NOWRAP>                                */
    0, 4, 1, 0, 8, 235,
    /*  !--FIELD TEXTUAL f117 NAME=L ... mless user id:&nbsp;&nbsp;"         */
    0, 51, 10, 6, 1, 0, 0, '%', 0, '%', 'f', '1', '1', '7', 0, 32, 32,
    'U', 's', 'i', 'n', 'g', 32, 'h', 'a', 'r', 'm', 'l', 'e', 's', 's',
    32, 'u', 's', 'e', 'r', 32, 'i', 'd', ':', '&', 'n', 'b', 's', 'p',
    ';', '&', 'n', 'b', 's', 'p', ';', 0,
    /*  </TD><TD ALIGN=LEFT WIDTH=""80%"">                                   */
    0, 4, 1, 0, 9, '=',
    /*  !--FIELD TEXTUAL f118 NAME=s ... E=30 MAX=? UPPER=0 VALUE=""         */
    0, 14, 10, 0, 1, 0, 0, 30, 0, 30, 'f', '1', '1', '8', 0, 0,
    /*  !--FIELD TEXTUAL f119 NAME=L ... bsp;and group:&nbsp;&nbsp;"         */
    0, 48, 10, 6, 1, 0, 0, '"', 0, '"', 'f', '1', '1', '9', 0, '&', 'n',
    'b', 's', 'p', ';', '&', 'n', 'b', 's', 'p', ';', 'a', 'n', 'd', 32,
    'g', 'r', 'o', 'u', 'p', ':', '&', 'n', 'b', 's', 'p', ';', '&',
    'n', 'b', 's', 'p', ';', 0,
    /*  !--FIELD TEXTUAL f120 NAME=s ... E=30 MAX=? UPPER=0 VALUE=""         */
    0, 14, 10, 0, 1, 0, 0, 30, 0, 30, 'f', '1', '2', '0', 0, 0,
    /*  </TD></TR>                                                           */
    0, 4, 1, 0, 9, 156,
    /*  </TABLE>                                                             */
    0, 4, 1, 0, 6, 173,
    /*  </FORM>                                                              */
    0, 9, 0, '<', '/', 'F', 'O', 'R', 'M', '>', 10,
    /*  <HR>                                                                 */
    0, 6, 0, '<', 'H', 'R', '>', 10,
    /*  <TABLE WIDTH=100%><TR>                                               */
    0, 24, 0, '<', 'T', 'A', 'B', 'L', 'E', 32, 'W', 'I', 'D', 'T', 'H',
    '=', '1', '0', '0', '%', '>', '<', 'T', 'R', '>', 10,
    /*  <TD><IMG SRC="/admin/im0096c.gif"                                    */
    0, 35, 0, '<', 'T', 'D', '>', '<', 'I', 'M', 'G', 32, 'S', 'R', 'C',
    '=', '"', '/', 'a', 'd', 'm', 'i', 'n', '/', 'i', 'm', '0', '0',
    '9', '6', 'c', '.', 'g', 'i', 'f', '"', 10,
    /*  WIDTH=96 HEIGHT=36>                                                  */
    0, 21, 0, 'W', 'I', 'D', 'T', 'H', '=', '9', '6', 32, 'H', 'E', 'I',
    'G', 'H', 'T', '=', '3', '6', '>', 10,
    /*  <TD ALIGN=CENTER><FONT SIZE= ... 9 1996-99 iMatix Corporation        */
    0, 75, 0, '<', 'T', 'D', 32, 'A', 'L', 'I', 'G', 'N', '=', 'C', 'E',
    'N', 'T', 'E', 'R', '>', '<', 'F', 'O', 'N', 'T', 32, 'S', 'I', 'Z',
    'E', '=', 45, '1', '>', 'C', 'o', 'p', 'y', 'r', 'i', 'g', 'h', 't',
    32, '&', '#', '1', '6', '9', 32, '1', '9', '9', '6', 45, '9', '9',
    32, 'i', 'M', 'a', 't', 'i', 'x', 32, 'C', 'o', 'r', 'p', 'o', 'r',
    'a', 't', 'i', 'o', 'n', 10,
    /*  <BR>Powered by iMatix Studio 1.0                                     */
    0, 34, 0, '<', 'B', 'R', '>', 'P', 'o', 'w', 'e', 'r', 'e', 'd', 32,
    'b', 'y', 32, 'i', 'M', 'a', 't', 'i', 'x', 32, 'S', 't', 'u', 'd',
    'i', 'o', 32, '1', '.', '0', 10,
    /*  <TD ALIGN=RIGHT><FONT SIZE=-1>#(date) #(time)                        */
    0, 47, 0, '<', 'T', 'D', 32, 'A', 'L', 'I', 'G', 'N', '=', 'R', 'I',
    'G', 'H', 'T', '>', '<', 'F', 'O', 'N', 'T', 32, 'S', 'I', 'Z', 'E',
    '=', 45, '1', '>', '#', '(', 'd', 'a', 't', 'e', ')', 32, '#', '(',
    't', 'i', 'm', 'e', ')', 10,
    /*  <BR>#(product) v2.5b3                                                */
    0, 23, 0, '<', 'B', 'R', '>', '#', '(', 'p', 'r', 'o', 'd', 'u',
    'c', 't', ')', 32, 'v', '2', '.', '5', 'b', '3', 10,
    /*  </TABLE>                                                             */
    0, 4, 1, 0, 6, 173,
    /*  </BODY></HTML>                                                       */
    0, 16, 0, '<', '/', 'B', 'O', 'D', 'Y', '>', '<', '/', 'H', 'T',
    'M', 'L', '>', 10,
    /*  <SCRIPT LANGUAGE="JavaScript"><!--                                   */
    0, 4, 1, 0, 0, 'l',
    /*  function focus() {    if ("# ... us).focus();}// --></SCRIPT>        */
    0, 122, 0, 'f', 'u', 'n', 'c', 't', 'i', 'o', 'n', 32, 'f', 'o',
    'c', 'u', 's', '(', ')', 32, '{', 10, 10, 32, 32, 32, 32, 'i', 'f',
    32, '(', '"', '#', '(', '_', 'f', 'o', 'c', 'u', 's', ')', '"', 32,
    '!', '=', 32, '"', 'j', 's', 'a', 'c', 't', 'i', 'o', 'n', '"', ')',
    10, 10, 32, 32, 32, 32, 32, 32, 32, 32, 'd', 'o', 'c', 'u', 'm',
    'e', 'n', 't', '.', 'f', 'o', 'r', 'm', 's', '[', '0', ']', '.',
    '#', '(', '_', 'f', 'o', 'c', 'u', 's', ')', '.', 'f', 'o', 'c',
    'u', 's', '(', ')', ';', 10, 10, '}', 10, 10, '/', '/', 32, 45, 45,
    '>', '<', '/', 'S', 'C', 'R', 'I', 'P', 'T', '>', 10,
    0, 0, 0
    };

static FIELD_DEFN xiadm07_fields [] = {
    { 0, 1807, 80 },                    /*  message_to_user                 */
    { 82, 2203, 4 },                    /*  on_windows_32                   */
    { 88, 2234, 4 },                    /*  on_unix                         */
    { 94, 2324, 26 },                   /*  l_filename                      */
    { 122, 2403, 80 },                  /*  filename                        */
    { 204, 2565, 37 },                  /*  l_password_case                 */
    { 243, 2623, 1 },                   /*  password_case                   */
    { 246, 2653, 34 },                  /*  l_dirlist                       */
    { 282, 2708, 1 },                   /*  dirlist                         */
    { 285, 2738, 34 },                  /*  l_admin                         */
    { 321, 2793, 1 },                   /*  admin                           */
    { 324, 2824, 28 },                  /*  l_webmask                       */
    { 354, 2874, 80 },                  /*  webmask                         */
    { 436, 2925, 31 },                  /*  l_superuser                     */
    { 469, 2978, 20 },                  /*  superuser                       */
    { 491, 3053, 42 },                  /*  l_safepaths                     */
    { 535, 3117, 1 },                   /*  safepaths                       */
    { 538, 3148, 42 },                  /*  l_secure                        */
    { 582, 3212, 1 },                   /*  secure                          */
    { 585, 3243, 37 },                  /*  l_cgi_username                  */
    { 624, 3302, 30 },                  /*  cgi_username                    */
    { 656, 3318, 30 },                  /*  l_cgi_groupname                 */
    { 688, 3364, 30 },                  /*  cgi_groupname                   */
    { 720, 3380, 33 },                  /*  l_cgi_password                  */
    { 755, 3429, 30 },                  /*  cgi_password                    */
    { 787, 3464, 42 },                  /*  l_setuid                        */
    { 831, 3528, 1 },                   /*  setuid                          */
    { 834, 3559, 37 },                  /*  l_setuid_user                   */
    { 873, 3618, 30 },                  /*  setuid_user                     */
    { 905, 3634, 34 },                  /*  l_setuid_group                  */
    { 941, 3684, 30 },                  /*  setuid_group                    */
    { 973, 0, 0 },                      /*  -- sentinel --                  */
    };

/*  The data of a form is a list of attributes and fields                    */

typedef struct {
    byte   message_to_user_a    ;
    char   message_to_user      [80 + 1];
    byte   on_windows_32_a      ;
    char   on_windows_32        [4 + 1];
    byte   on_unix_a            ;
    char   on_unix              [4 + 1];
    byte   l_filename_a         ;
    char   l_filename           [26 + 1];
    byte   filename_a           ;
    char   filename             [80 + 1];
    byte   l_password_case_a    ;
    char   l_password_case      [37 + 1];
    byte   password_case_a      ;
    char   password_case        [1 + 1];
    byte   l_dirlist_a          ;
    char   l_dirlist            [34 + 1];
    byte   dirlist_a            ;
    char   dirlist              [1 + 1];
    byte   l_admin_a            ;
    char   l_admin              [34 + 1];
    byte   admin_a              ;
    char   admin                [1 + 1];
    byte   l_webmask_a          ;
    char   l_webmask            [28 + 1];
    byte   webmask_a            ;
    char   webmask              [80 + 1];
    byte   l_superuser_a        ;
    char   l_superuser          [31 + 1];
    byte   superuser_a          ;
    char   superuser            [20 + 1];
    byte   l_safepaths_a        ;
    char   l_safepaths          [42 + 1];
    byte   safepaths_a          ;
    char   safepaths            [1 + 1];
    byte   l_secure_a           ;
    char   l_secure             [42 + 1];
    byte   secure_a             ;
    char   secure               [1 + 1];
    byte   l_cgi_username_a     ;
    char   l_cgi_username       [37 + 1];
    byte   cgi_username_a       ;
    char   cgi_username         [30 + 1];
    byte   l_cgi_groupname_a    ;
    char   l_cgi_groupname      [30 + 1];
    byte   cgi_groupname_a      ;
    char   cgi_groupname        [30 + 1];
    byte   l_cgi_password_a     ;
    char   l_cgi_password       [33 + 1];
    byte   cgi_password_a       ;
    char   cgi_password         [30 + 1];
    byte   l_setuid_a           ;
    char   l_setuid             [42 + 1];
    byte   setuid_a             ;
    char   setuid               [1 + 1];
    byte   l_setuid_user_a      ;
    char   l_setuid_user        [37 + 1];
    byte   setuid_user_a        ;
    char   setuid_user          [30 + 1];
    byte   l_setuid_group_a     ;
    char   l_setuid_group       [34 + 1];
    byte   setuid_group_a       ;
    char   setuid_group         [30 + 1];
    byte   back_a;
    byte   save_a;
    byte   default_a;
    byte   undo_a;
    byte   console_a;
    byte   halt_a;
    byte   restart_a;
    byte   exit_a;
    byte   passwords_a;
    byte   server_a;
    byte   vhosts_a;
    byte   cgi_a;
    byte   logging_a;
    byte   ftp_a;
    byte   define_a;
    } XIADM07_DATA;

/*  The form definition collects these tables into a header                  */

static FORM_DEFN form_xiadm07 = {
    xiadm07_blocks,
    xiadm07_fields,
    129,                                /*  Number of blocks in form        */
    31,                                 /*  Number of fields in form        */
    15,                                 /*  Number of actions in form       */
    973,                                /*  Size of fields                  */
    "xiadm07",                          /*  Name of form                    */
    };

#endif                                  /*  End included file               */
