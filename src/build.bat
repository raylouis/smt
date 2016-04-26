@echo off
:-
:-  Build script for iMatix SMT Package, for generic MS-DOS.
:-  Requires the iMatix 'c' batch file.
:-
:-  Generated by Otto v2.2 from buildsmt.txt on 100/04/01, 16:30:12
:-  For more info see Otto documentation at http://www.imatix.com.
:-  Bug reports & questions to <ph@imatix.com>
:-  ---------------------------------------------------------------
:-
echo Building the iMatix Simple Multi-Threading kernel (SMT)
echo You must already have built the SFL package and installed the
echo SFL library.  If not, Ctrl-C now and get your hands on the SFL.
if .%1==. pause >nul
echo Checking for required files...

:-  require $LIB libsfl
if exist libsfl.lib goto end_1
if exist \usr\lib\libsfl.lib goto end_1
    echo libsfl.lib missing - aborting
    goto exit
:end_1

:-  require smtlog.c   smtlog.l  smtlog.d  smtlog.i
if exist smtlog.c goto end_2
    echo smtlog.c missing - aborting
    goto exit
:end_2
if exist smtlog.l goto end_3
    echo smtlog.l missing - aborting
    goto exit
:end_3
if exist smtlog.d goto end_4
    echo smtlog.d missing - aborting
    goto exit
:end_4
if exist smtlog.i goto end_5
    echo smtlog.i missing - aborting
    goto exit
:end_5

:-  require smtecho.c  smtecho.l smtecho.d smtecho.i
if exist smtecho.c goto end_6
    echo smtecho.c missing - aborting
    goto exit
:end_6
if exist smtecho.l goto end_7
    echo smtecho.l missing - aborting
    goto exit
:end_7
if exist smtecho.d goto end_8
    echo smtecho.d missing - aborting
    goto exit
:end_8
if exist smtecho.i goto end_9
    echo smtecho.i missing - aborting
    goto exit
:end_9

:-  require smthttp.c  smthttp.l smthttp.d smthttp.i
if exist smthttp.c goto end_10
    echo smthttp.c missing - aborting
    goto exit
:end_10
if exist smthttp.l goto end_11
    echo smthttp.l missing - aborting
    goto exit
:end_11
if exist smthttp.d goto end_12
    echo smthttp.d missing - aborting
    goto exit
:end_12
if exist smthttp.i goto end_13
    echo smthttp.i missing - aborting
    goto exit
:end_13

:-  require smtoper.c  smtoper.l smtoper.d smtoper.i
if exist smtoper.c goto end_14
    echo smtoper.c missing - aborting
    goto exit
:end_14
if exist smtoper.l goto end_15
    echo smtoper.l missing - aborting
    goto exit
:end_15
if exist smtoper.d goto end_16
    echo smtoper.d missing - aborting
    goto exit
:end_16
if exist smtoper.i goto end_17
    echo smtoper.i missing - aborting
    goto exit
:end_17

:-  require smtsock.c  smtsock.l smtsock.d smtsock.i
if exist smtsock.c goto end_18
    echo smtsock.c missing - aborting
    goto exit
:end_18
if exist smtsock.l goto end_19
    echo smtsock.l missing - aborting
    goto exit
:end_19
if exist smtsock.d goto end_20
    echo smtsock.d missing - aborting
    goto exit
:end_20
if exist smtsock.i goto end_21
    echo smtsock.i missing - aborting
    goto exit
:end_21

:-  require smtslot.c  smtslot.l smtslot.d smtslot.i
if exist smtslot.c goto end_22
    echo smtslot.c missing - aborting
    goto exit
:end_22
if exist smtslot.l goto end_23
    echo smtslot.l missing - aborting
    goto exit
:end_23
if exist smtslot.d goto end_24
    echo smtslot.d missing - aborting
    goto exit
:end_24
if exist smtslot.i goto end_25
    echo smtslot.i missing - aborting
    goto exit
:end_25

:-  require smtsimu.c  smtsimu.l smtsimu.d smtsimu.i
if exist smtsimu.c goto end_26
    echo smtsimu.c missing - aborting
    goto exit
:end_26
if exist smtsimu.l goto end_27
    echo smtsimu.l missing - aborting
    goto exit
:end_27
if exist smtsimu.d goto end_28
    echo smtsimu.d missing - aborting
    goto exit
:end_28
if exist smtsimu.i goto end_29
    echo smtsimu.i missing - aborting
    goto exit
:end_29

:-  require smttime.c  smttime.l smttime.d smttime.i
if exist smttime.c goto end_30
    echo smttime.c missing - aborting
    goto exit
:end_30
if exist smttime.l goto end_31
    echo smttime.l missing - aborting
    goto exit
:end_31
if exist smttime.d goto end_32
    echo smttime.d missing - aborting
    goto exit
:end_32
if exist smttime.i goto end_33
    echo smttime.i missing - aborting
    goto exit
:end_33

:-  require smttran.c  smttran.l smttran.d smttran.i
if exist smttran.c goto end_34
    echo smttran.c missing - aborting
    goto exit
:end_34
if exist smttran.l goto end_35
    echo smttran.l missing - aborting
    goto exit
:end_35
if exist smttran.d goto end_36
    echo smttran.d missing - aborting
    goto exit
:end_36
if exist smttran.i goto end_37
    echo smttran.i missing - aborting
    goto exit
:end_37

:-  require smtupmc.c  smtupmc.l smtupmc.d smtupmc.i
if exist smtupmc.c goto end_38
    echo smtupmc.c missing - aborting
    goto exit
:end_38
if exist smtupmc.l goto end_39
    echo smtupmc.l missing - aborting
    goto exit
:end_39
if exist smtupmc.d goto end_40
    echo smtupmc.d missing - aborting
    goto exit
:end_40
if exist smtupmc.i goto end_41
    echo smtupmc.i missing - aborting
    goto exit
:end_41

:-  require smtupmd.c  smtupmd.l smtupmd.d smtupmd.i
if exist smtupmd.c goto end_42
    echo smtupmd.c missing - aborting
    goto exit
:end_42
if exist smtupmd.l goto end_43
    echo smtupmd.l missing - aborting
    goto exit
:end_43
if exist smtupmd.d goto end_44
    echo smtupmd.d missing - aborting
    goto exit
:end_44
if exist smtupmd.i goto end_45
    echo smtupmd.i missing - aborting
    goto exit
:end_45

:-  require smttst1.c  smttst1.l smttst1.d smttst1.i
if exist smttst1.c goto end_46
    echo smttst1.c missing - aborting
    goto exit
:end_46
if exist smttst1.l goto end_47
    echo smttst1.l missing - aborting
    goto exit
:end_47
if exist smttst1.d goto end_48
    echo smttst1.d missing - aborting
    goto exit
:end_48
if exist smttst1.i goto end_49
    echo smttst1.i missing - aborting
    goto exit
:end_49

:-  require smttst2.c  smttst2.l smttst2.d smttst2.i
if exist smttst2.c goto end_50
    echo smttst2.c missing - aborting
    goto exit
:end_50
if exist smttst2.l goto end_51
    echo smttst2.l missing - aborting
    goto exit
:end_51
if exist smttst2.d goto end_52
    echo smttst2.d missing - aborting
    goto exit
:end_52
if exist smttst2.i goto end_53
    echo smttst2.i missing - aborting
    goto exit
:end_53

:-  require smttst3.c  smttst3.l smttst3.d smttst3.i
if exist smttst3.c goto end_54
    echo smttst3.c missing - aborting
    goto exit
:end_54
if exist smttst3.l goto end_55
    echo smttst3.l missing - aborting
    goto exit
:end_55
if exist smttst3.d goto end_56
    echo smttst3.d missing - aborting
    goto exit
:end_56
if exist smttst3.i goto end_57
    echo smttst3.i missing - aborting
    goto exit
:end_57

:-  require smtftpc.c  smtftpc.l smtftpc.d smtftpc.i
if exist smtftpc.c goto end_58
    echo smtftpc.c missing - aborting
    goto exit
:end_58
if exist smtftpc.l goto end_59
    echo smtftpc.l missing - aborting
    goto exit
:end_59
if exist smtftpc.d goto end_60
    echo smtftpc.d missing - aborting
    goto exit
:end_60
if exist smtftpc.i goto end_61
    echo smtftpc.i missing - aborting
    goto exit
:end_61

:-  require smtftpd.c  smtftpd.l smtftpd.d smtftpd.i
if exist smtftpd.c goto end_62
    echo smtftpd.c missing - aborting
    goto exit
:end_62
if exist smtftpd.l goto end_63
    echo smtftpd.l missing - aborting
    goto exit
:end_63
if exist smtftpd.d goto end_64
    echo smtftpd.d missing - aborting
    goto exit
:end_64
if exist smtftpd.i goto end_65
    echo smtftpd.i missing - aborting
    goto exit
:end_65

:-  require smtrdns.c  smtrdns.l smtrdns.d smtrdns.i
if exist smtrdns.c goto end_66
    echo smtrdns.c missing - aborting
    goto exit
:end_66
if exist smtrdns.l goto end_67
    echo smtrdns.l missing - aborting
    goto exit
:end_67
if exist smtrdns.d goto end_68
    echo smtrdns.d missing - aborting
    goto exit
:end_68
if exist smtrdns.i goto end_69
    echo smtrdns.i missing - aborting
    goto exit
:end_69

:-  require smthlog.c  smthlog.l smthlog.d smthlog.i
if exist smthlog.c goto end_70
    echo smthlog.c missing - aborting
    goto exit
:end_70
if exist smthlog.l goto end_71
    echo smthlog.l missing - aborting
    goto exit
:end_71
if exist smthlog.d goto end_72
    echo smthlog.d missing - aborting
    goto exit
:end_72
if exist smthlog.i goto end_73
    echo smthlog.i missing - aborting
    goto exit
:end_73

:-  require smtpipe.c  smtpipe.l smtpipe.d smtpipe.i
if exist smtpipe.c goto end_74
    echo smtpipe.c missing - aborting
    goto exit
:end_74
if exist smtpipe.l goto end_75
    echo smtpipe.l missing - aborting
    goto exit
:end_75
if exist smtpipe.d goto end_76
    echo smtpipe.d missing - aborting
    goto exit
:end_76
if exist smtpipe.i goto end_77
    echo smtpipe.i missing - aborting
    goto exit
:end_77

:-  require smthttpl.c smthttpl.h
if exist smthttpl.c goto end_78
    echo smthttpl.c missing - aborting
    goto exit
:end_78
if exist smthttpl.h goto end_79
    echo smthttpl.h missing - aborting
    goto exit
:end_79

:-  require smtrdnsl.c smtrdnsl.h
if exist smtrdnsl.c goto end_80
    echo smtrdnsl.c missing - aborting
    goto exit
:end_80
if exist smtrdnsl.h goto end_81
    echo smtrdnsl.h missing - aborting
    goto exit
:end_81

:-  require smtmsg.c   smtmsg.h
if exist smtmsg.c goto end_82
    echo smtmsg.c missing - aborting
    goto exit
:end_82
if exist smtmsg.h goto end_83
    echo smtmsg.h missing - aborting
    goto exit
:end_83

:-  require smtsslm.c  smtsslm.h
if exist smtsslm.c goto end_84
    echo smtsslm.c missing - aborting
    goto exit
:end_84
if exist smtsslm.h goto end_85
    echo smtsslm.h missing - aborting
    goto exit
:end_85

:-  require smtlib.c   smtlib.h
if exist smtlib.c goto end_86
    echo smtlib.c missing - aborting
    goto exit
:end_86
if exist smtlib.h goto end_87
    echo smtlib.h missing - aborting
    goto exit
:end_87

:-  require smtftpl.c  smtftpl.h
if exist smtftpl.c goto end_88
    echo smtftpl.c missing - aborting
    goto exit
:end_88
if exist smtftpl.h goto end_89
    echo smtftpl.h missing - aborting
    goto exit
:end_89

:-  require formio.c   formio.h
if exist formio.c goto end_90
    echo formio.c missing - aborting
    goto exit
:end_90
if exist formio.h goto end_91
    echo formio.h missing - aborting
    goto exit
:end_91

:-  require xixlogm.c  xixlogm.h
if exist xixlogm.c goto end_92
    echo xixlogm.c missing - aborting
    goto exit
:end_92
if exist xixlogm.h goto end_93
    echo xixlogm.h missing - aborting
    goto exit
:end_93

:-  require xixlog.c   xixlog.l  xixlog.d xixlog.i xixlog.h
if exist xixlog.c goto end_94
    echo xixlog.c missing - aborting
    goto exit
:end_94
if exist xixlog.l goto end_95
    echo xixlog.l missing - aborting
    goto exit
:end_95
if exist xixlog.d goto end_96
    echo xixlog.d missing - aborting
    goto exit
:end_96
if exist xixlog.i goto end_97
    echo xixlog.i missing - aborting
    goto exit
:end_97
if exist xixlog.h goto end_98
    echo xixlog.h missing - aborting
    goto exit
:end_98

:-  require xitami.c
if exist xitami.c goto end_99
    echo xitami.c missing - aborting
    goto exit
:end_99

:-  require xiadmin.c  xiadmin.l xiadmin.d xiadmin.i
if exist xiadmin.c goto end_100
    echo xiadmin.c missing - aborting
    goto exit
:end_100
if exist xiadmin.l goto end_101
    echo xiadmin.l missing - aborting
    goto exit
:end_101
if exist xiadmin.d goto end_102
    echo xiadmin.d missing - aborting
    goto exit
:end_102
if exist xiadmin.i goto end_103
    echo xiadmin.i missing - aborting
    goto exit
:end_103

:-  require xierror.c  xierror.l xierror.d xierror.i
if exist xierror.c goto end_104
    echo xierror.c missing - aborting
    goto exit
:end_104
if exist xierror.l goto end_105
    echo xierror.l missing - aborting
    goto exit
:end_105
if exist xierror.d goto end_106
    echo xierror.d missing - aborting
    goto exit
:end_106
if exist xierror.i goto end_107
    echo xierror.i missing - aborting
    goto exit
:end_107

:-  require xisuper.c  xisuper.l xisuper.d xisuper.i
if exist xisuper.c goto end_108
    echo xisuper.c missing - aborting
    goto exit
:end_108
if exist xisuper.l goto end_109
    echo xisuper.l missing - aborting
    goto exit
:end_109
if exist xisuper.d goto end_110
    echo xisuper.d missing - aborting
    goto exit
:end_110
if exist xisuper.i goto end_111
    echo xisuper.i missing - aborting
    goto exit
:end_111

:-  require xiddns.c   xiddns.l  xiddns.d  xiddns.i
if exist xiddns.c goto end_112
    echo xiddns.c missing - aborting
    goto exit
:end_112
if exist xiddns.l goto end_113
    echo xiddns.l missing - aborting
    goto exit
:end_113
if exist xiddns.d goto end_114
    echo xiddns.d missing - aborting
    goto exit
:end_114
if exist xiddns.i goto end_115
    echo xiddns.i missing - aborting
    goto exit
:end_115

:-  require xixssi.c   xixssi.l  xixssi.d  xixssi.i
if exist xixssi.c goto end_116
    echo xixssi.c missing - aborting
    goto exit
:end_116
if exist xixssi.l goto end_117
    echo xixssi.l missing - aborting
    goto exit
:end_117
if exist xixssi.d goto end_118
    echo xixssi.d missing - aborting
    goto exit
:end_118
if exist xixssi.i goto end_119
    echo xixssi.i missing - aborting
    goto exit
:end_119

:-  require xixxml.c   xixxml.l  xixxml.d  xixxml.i
if exist xixxml.c goto end_120
    echo xixxml.c missing - aborting
    goto exit
:end_120
if exist xixxml.l goto end_121
    echo xixxml.l missing - aborting
    goto exit
:end_121
if exist xixxml.d goto end_122
    echo xixxml.d missing - aborting
    goto exit
:end_122
if exist xixxml.i goto end_123
    echo xixxml.i missing - aborting
    goto exit
:end_123

:-  require xilrwp.c   xilrwp.l  xilrwp.d  xilrwp.i
if exist xilrwp.c goto end_124
    echo xilrwp.c missing - aborting
    goto exit
:end_124
if exist xilrwp.l goto end_125
    echo xilrwp.l missing - aborting
    goto exit
:end_125
if exist xilrwp.d goto end_126
    echo xilrwp.d missing - aborting
    goto exit
:end_126
if exist xilrwp.i goto end_127
    echo xilrwp.i missing - aborting
    goto exit
:end_127

:-  require xiimap.c   xiimap.l  xiimap.d  xiimap.i
if exist xiimap.c goto end_128
    echo xiimap.c missing - aborting
    goto exit
:end_128
if exist xiimap.l goto end_129
    echo xiimap.l missing - aborting
    goto exit
:end_129
if exist xiimap.d goto end_130
    echo xiimap.d missing - aborting
    goto exit
:end_130
if exist xiimap.i goto end_131
    echo xiimap.i missing - aborting
    goto exit
:end_131

:-  require echocli.c  echod.c   tsttime.c tstslot.c tstrdns.c
if exist echocli.c goto end_132
    echo echocli.c missing - aborting
    goto exit
:end_132
if exist echod.c goto end_133
    echo echod.c missing - aborting
    goto exit
:end_133
if exist tsttime.c goto end_134
    echo tsttime.c missing - aborting
    goto exit
:end_134
if exist tstslot.c goto end_135
    echo tstslot.c missing - aborting
    goto exit
:end_135
if exist tstrdns.c goto end_136
    echo tstrdns.c missing - aborting
    goto exit
:end_136

:-  require xixlat.c
if exist xixlat.c goto end_137
    echo xixlat.c missing - aborting
    goto exit
:end_137

:-  require upmc.c upmd.c smtupm.h
if exist upmc.c goto end_138
    echo upmc.c missing - aborting
    goto exit
:end_138
if exist upmd.c goto end_139
    echo upmd.c missing - aborting
    goto exit
:end_139
if exist smtupm.h goto end_140
    echo smtupm.h missing - aborting
    goto exit
:end_140

:-  require sfl.h
if exist sfl.h goto end_141
    echo sfl.h missing - aborting
    goto exit
:end_141

:-  require xiadm01.h xiadm02.h xiadm03.h xiadm04.h xiadm05.h
if exist xiadm01.h goto end_142
    echo xiadm01.h missing - aborting
    goto exit
:end_142
if exist xiadm02.h goto end_143
    echo xiadm02.h missing - aborting
    goto exit
:end_143
if exist xiadm03.h goto end_144
    echo xiadm03.h missing - aborting
    goto exit
:end_144
if exist xiadm04.h goto end_145
    echo xiadm04.h missing - aborting
    goto exit
:end_145
if exist xiadm05.h goto end_146
    echo xiadm05.h missing - aborting
    goto exit
:end_146

:-  require xiadm06.h xiadm07.h xiadm08.h xiadm09.h xiadm10.h
if exist xiadm06.h goto end_147
    echo xiadm06.h missing - aborting
    goto exit
:end_147
if exist xiadm07.h goto end_148
    echo xiadm07.h missing - aborting
    goto exit
:end_148
if exist xiadm08.h goto end_149
    echo xiadm08.h missing - aborting
    goto exit
:end_149
if exist xiadm09.h goto end_150
    echo xiadm09.h missing - aborting
    goto exit
:end_150
if exist xiadm10.h goto end_151
    echo xiadm10.h missing - aborting
    goto exit
:end_151

:-  require xiadm11.h xiadm12.h xiadm13.h xiadm14.h xiadm15.h
if exist xiadm11.h goto end_152
    echo xiadm11.h missing - aborting
    goto exit
:end_152
if exist xiadm12.h goto end_153
    echo xiadm12.h missing - aborting
    goto exit
:end_153
if exist xiadm13.h goto end_154
    echo xiadm13.h missing - aborting
    goto exit
:end_154
if exist xiadm14.h goto end_155
    echo xiadm14.h missing - aborting
    goto exit
:end_155
if exist xiadm15.h goto end_156
    echo xiadm15.h missing - aborting
    goto exit
:end_156

:-  require xiadm16.h xiadm17.h xiadm18.h xiadm18.h xiadm19.h
if exist xiadm16.h goto end_157
    echo xiadm16.h missing - aborting
    goto exit
:end_157
if exist xiadm17.h goto end_158
    echo xiadm17.h missing - aborting
    goto exit
:end_158
if exist xiadm18.h goto end_159
    echo xiadm18.h missing - aborting
    goto exit
:end_159
if exist xiadm18.h goto end_160
    echo xiadm18.h missing - aborting
    goto exit
:end_160
if exist xiadm19.h goto end_161
    echo xiadm19.h missing - aborting
    goto exit
:end_161

:-  require xiadm20.h xiadm21.h xiadm22.h xiadm23.h xiadm24.h
if exist xiadm20.h goto end_162
    echo xiadm20.h missing - aborting
    goto exit
:end_162
if exist xiadm21.h goto end_163
    echo xiadm21.h missing - aborting
    goto exit
:end_163
if exist xiadm22.h goto end_164
    echo xiadm22.h missing - aborting
    goto exit
:end_164
if exist xiadm23.h goto end_165
    echo xiadm23.h missing - aborting
    goto exit
:end_165
if exist xiadm24.h goto end_166
    echo xiadm24.h missing - aborting
    goto exit
:end_166

:-  require xiadm25.h xiadm26.h xiadm27.h xiadm28.h xiadm29.h
if exist xiadm25.h goto end_167
    echo xiadm25.h missing - aborting
    goto exit
:end_167
if exist xiadm26.h goto end_168
    echo xiadm26.h missing - aborting
    goto exit
:end_168
if exist xiadm27.h goto end_169
    echo xiadm27.h missing - aborting
    goto exit
:end_169
if exist xiadm28.h goto end_170
    echo xiadm28.h missing - aborting
    goto exit
:end_170
if exist xiadm29.h goto end_171
    echo xiadm29.h missing - aborting
    goto exit
:end_171

:-  require xiadm30.h xiadm31.h
if exist xiadm30.h goto end_172
    echo xiadm30.h missing - aborting
    goto exit
:end_172
if exist xiadm31.h goto end_173
    echo xiadm31.h missing - aborting
    goto exit
:end_173

:-  require smtschm.c
if exist smtschm.c goto end_174
    echo smtschm.c missing - aborting
    goto exit
:end_174

:-  delete $lib libsmt
if exist libsmt.lib del libsmt.lib

:-  library libsmt

:-  compile smtlog  smtmsg  smtecho smthttp smtoper smtsock
call c smtlog
if not exist smtlog.obj goto exit
call c -r libsmt.lib smtlog
call c smtmsg
if not exist smtmsg.obj goto exit
call c -r libsmt.lib smtmsg
call c smtecho
if not exist smtecho.obj goto exit
call c -r libsmt.lib smtecho
call c smthttp
if not exist smthttp.obj goto exit
call c -r libsmt.lib smthttp
call c smtoper
if not exist smtoper.obj goto exit
call c -r libsmt.lib smtoper
call c smtsock
if not exist smtsock.obj goto exit
call c -r libsmt.lib smtsock

:-  compile smtslot smtsimu smtupmd smtupmc smttran smttime
call c smtslot
if not exist smtslot.obj goto exit
call c -r libsmt.lib smtslot
call c smtsimu
if not exist smtsimu.obj goto exit
call c -r libsmt.lib smtsimu
call c smtupmd
if not exist smtupmd.obj goto exit
call c -r libsmt.lib smtupmd
call c smtupmc
if not exist smtupmc.obj goto exit
call c -r libsmt.lib smtupmc
call c smttran
if not exist smttran.obj goto exit
call c -r libsmt.lib smttran
call c smttime
if not exist smttime.obj goto exit
call c -r libsmt.lib smttime

:-  compile smtftpc smtftpd smtlib  smtrdns smthlog smtpipe
call c smtftpc
if not exist smtftpc.obj goto exit
call c -r libsmt.lib smtftpc
call c smtftpd
if not exist smtftpd.obj goto exit
call c -r libsmt.lib smtftpd
call c smtlib
if not exist smtlib.obj goto exit
call c -r libsmt.lib smtlib
call c smtrdns
if not exist smtrdns.obj goto exit
call c -r libsmt.lib smtrdns
call c smthlog
if not exist smthlog.obj goto exit
call c -r libsmt.lib smthlog
call c smtpipe
if not exist smtpipe.obj goto exit
call c -r libsmt.lib smtpipe

:-  compile smthttpl smtftpl smtrdnsl smtsslm xixlogm
call c smthttpl
if not exist smthttpl.obj goto exit
call c -r libsmt.lib smthttpl
call c smtftpl
if not exist smtftpl.obj goto exit
call c -r libsmt.lib smtftpl
call c smtrdnsl
if not exist smtrdnsl.obj goto exit
call c -r libsmt.lib smtrdnsl
call c smtsslm
if not exist smtsslm.obj goto exit
call c -r libsmt.lib smtsslm
call c xixlogm
if not exist xixlogm.obj goto exit
call c -r libsmt.lib xixlogm

:-  compile formio
call c formio
if not exist formio.obj goto exit
call c -r libsmt.lib formio

:-  compile xixlog  xiadmin xierror xixssi xixxml xilrwp xisuper
call c xixlog
if not exist xixlog.obj goto exit
call c -r libsmt.lib xixlog
call c xiadmin
if not exist xiadmin.obj goto exit
call c -r libsmt.lib xiadmin
call c xierror
if not exist xierror.obj goto exit
call c -r libsmt.lib xierror
call c xixssi
if not exist xixssi.obj goto exit
call c -r libsmt.lib xixssi
call c xixxml
if not exist xixxml.obj goto exit
call c -r libsmt.lib xixxml
call c xilrwp
if not exist xilrwp.obj goto exit
call c -r libsmt.lib xilrwp
call c xisuper
if not exist xisuper.obj goto exit
call c -r libsmt.lib xisuper

:-  compile xiddns xiimap
call c xiddns
if not exist xiddns.obj goto exit
call c -r libsmt.lib xiddns
call c xiimap
if not exist xiimap.obj goto exit
call c -r libsmt.lib xiimap

:-  compile smttst1 smttst2 smttst3
call c smttst1
if not exist smttst1.obj goto exit
call c -r libsmt.lib smttst1
call c smttst2
if not exist smttst2.obj goto exit
call c -r libsmt.lib smttst2
call c smttst3
if not exist smttst3.obj goto exit
call c -r libsmt.lib smttst3

:-  library

:-  compile xitami xixlat
call c xitami
if not exist xitami.obj goto exit
call c xixlat
if not exist xixlat.obj goto exit

:-  link    xitami xixlat
call c -L xitami
call c -L xixlat

:-  compile echocli echod tsttime tstslot tstrdns upmc upmd
call c echocli
if not exist echocli.obj goto exit
call c echod
if not exist echod.obj goto exit
call c tsttime
if not exist tsttime.obj goto exit
call c tstslot
if not exist tstslot.obj goto exit
call c tstrdns
if not exist tstrdns.obj goto exit
call c upmc
if not exist upmc.obj goto exit
call c upmd
if not exist upmd.obj goto exit

:-  link    echocli echod tsttime tstslot tstrdns upmc upmd
call c -L echocli
call c -L echod
call c -L tsttime
call c -L tstslot
call c -L tstrdns
call c -L upmc
call c -L upmd

:exit
:-- end script
