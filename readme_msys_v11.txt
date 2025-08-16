https://blog.csdn.net/umier2000/article/details/83677863

MinGW使用小结和链接

一、有用的链接

 

1. TuxPaint。如果你想用mingw编译sdl，gtk，可以参考tuxpaint作者给出的文档，里面介绍了一些旧版本的mingw编译方法，很详细。

http://johnnypops.demon.co.uk/mingw/

（已废）

 

2. MozillaBuild。一个配好的命令行编译环境（包括mingw）可以参考它的方法自己定制绿色版的msys/mingw。

ftp://ftp.mozilla.org/pub/mozilla/libraries/win32

https://developer.mozilla.org/En/Developer_Guide/Build_Instructions/Windows_Prerequisites

 

3. MinGW。官方提供的支持mingw编译的软件清单。罗列了很多出名的C/C++开发库

http://www.mingw.org/wiki/Community_Supplied_Links

 

4. Haxe。说了一些mingw编译的技巧

http://haxe.org/doc/build/haxe_windows

 

5. 一些mingw的编译src 

http://www.evolane.com/download/mirror/mingw/

 

6. 一些库的mingw预编译（只包含头文件和库文件）

http://cefiro.homelinux.org/resources/mingw-repository/release/

 

7. MinGW MSys GTK Configuration Guide（话说回来GTK+的源代码是我另一个已知的难编译的库，至今仍没成功用mingw编译过）

http://gcam.js.cx/index.php/MinGW_MSys_GTK_Configuration_Guide

 

8. PostgreSQL。它的源代码提及到一些linux专有的头文件怎么用windows平台SDK的头文件代替，对mingw移植有点帮助（因为mingw支持直接用windows的SDK头文件，用这种方法避开编译错误）。

http://www.postgresql.org/

 

 

--------------

(20100807update)

 

9. Installing MinGW, compiling Perl and vim
http://www.adp-gmbh.ch/blog/2004/october/9.html

 

10. Win32CompileMSYSNew
http://wiki.videolan.org/Win32CompileMSYSNew

 

11. EFLWindowsXP mingw build
http://trac.enlightenment.org/e/wiki/EFLWindowsXP

 

12. Wormux : Compilation using mingw (native and cross-compilation) - Documentation
http://www.wormux.org/phpboost/wiki/compilation-using-mingw-native-and-cross-compilation

 

13. MinGW cross compiling environment
http://www.nongnu.org/mingw-cross-env/#introduction

 

14. FAQ | MinGW(关于pkg-config和python)
http://www.mingw.org/wiki/FAQ

 

 ---------------------------------------

(2010-08-28 update) 

 

 

15.Logue

介绍一些可用于编译ONScripter的MinGW平台和程序库
http://logue.be/MinGW.html （旧的）

 

mingw-logue-pack

http://logue.be/MinGW

http://code.google.com/p/mingw-logue-pack/

提及以下链接(16-19)

 

 

16.qp-gcc
http://code.google.com/p/qp-gcc/

 

17. MinGW Komisar
http://komisar.gin.by/mingw/

 

18. TDM版MinGW
http://tdm-gcc.tdragon.net/

 

19. MinGW Distro
http://nuwen.net/mingw.html

 

 

 

20. 在windows下编译linux 0.11
http://www.oldlinux.org/oldlinux/viewthread.php?tid=11005&extra=page%3D1&page=1

 

 

21. jhbuild on windows
http://afuera.me.uk/jhbuild-windows/

 

 

22. MinGW的旧网页
http://oldwiki.mingw.org/index.php/GettingStarted

 

 

23. MinGW性能比较
http://www.interq.or.jp/japan/s-imai/tcltk/msys_mingw.html

 

 

24. MinGW安装
http://apis.jpn.ph/fswiki/wiki.cgi?page=Win32%2FCompiler%2FMinGW

 

 

25. ossbuild，包括MinGW与VS，目的是为了使用GStreamer。
下载中包含一个MSYS/MinGW编译环境。
http://code.google.com/p/ossbuild/

（20150618）

对于下载中那个msys_v11.7z

注意，它默认生成的是32位exe，而且添加-m64参数运行会不成功，

但并不意味着它不能生成64位的exe，是因为它调用的是

msys\mingw\i686-pc-mingw32

下的gcc，而另一个目录

msys\mingw\x86_64-pc-mingw32

下的gcc没有被调用

正确的生成64位exe的方法应该是

写道
gcc -b x86_64-pc-mingw32 hello.c
 参考：

http://gcc.gnu.org/onlinedocs/gcc-4.4.1/gcc/Target-Options.html

 

 

 

 

 

 

---------------------------------------

(20100831) 

26. Building GnuPG for Win32 using MinGW
http://clbianco.altervista.org/gnupg/eng/gnupg.html

 

--------------------------------------

(20100902)

27.Dev-C++

http://sourceforge.net/projects/dev-cpp/ 

http://www.inf.pucrs.br/~grv/Pong2/Dev-C++/Bin/

（注：虽然gcc版本会比较低，不过适合用于安装Qt4 for mingw，例如devcpp-4.9.9.2_setup.exe安装后的目录可以用于安装qt-win-opensource-4.3.5-mingw.exe，否则Qt4会安装失败）

 

执行QT4 configure操作之前需要去除某些系统变量，否则可能会编译报错，例如使用这样的批处理清除：

 

@echo off
@set include=
@set lib=
@set path=L:\Dev-Cpp\bin;C:\WINDOWS;C:\WINDOWS\system32
@cmd
AI写代码
java
运行
 在执行qtvars.bat之前执行

 （另：不能跟新版本的mingw共存，需要把同一分区下的MINGW目录改名为其他目录，否则会出现链接错误，如dwarf格式错误）

（另：win7的cmd.exe目录跟xp不一样，所以path变量改为

@set path=D:\Dev-Cpp\bin;C:\WINDOWS;C:\WINDOWS\system32;C:\Windows\SysWOW64

）

 

 

28. msysDVLPR-1.0.0 / HOWTO Create an MSYS Build Environment

http://www.mingw.org/wiki/HOWTO_Create_an_MSYS_Build_Environment

 

29. MinGWとEclipse CDT

http://blog.livedoor.jp/dq_school/archives/1321067.html

http://blog.livedoor.jp/dq_school/archives/1322435.html

 

30.  i18n-zh

http://code.google.com/p/i18n-zh

 

------------------------------------

(20101212)

 

31. mplayer编译工具链

http://oss.netfarm.it/mplayer-win32.php

http://sourceforge.net/projects/mplayer-win32/files/Toolchain/20080717/

http://sourceforge.net/projects/mplayer-win32/files/MinGW/MinGW%20BE%20gcc%204.2.5/MinGW-full-gcc-4.2.5-Dec-2010.7z/download

 

-----------------------------------------

(20110320)

 

32. RubyInstaller for Windows

https://github.com/oneclick/rubyinstaller

 

33. MozillaBuild

（准确来说MozillaBuild还集成了许多Win下的工具，包括VC的命令行，

主要用于在Windows下编译Mozilla的子项目）

https://developer.mozilla.org/en/Windows_Build_Prerequisites

（注：和前面重复了）

 

34. msys-cn

http://code.google.com/p/msys-cn/

 

35. micron

http://code.google.com/p/micron/

 

-----------------------------------------

20110409

 

36. mingw-and-ndk

http://code.google.com/p/mingw-and-ndk/

 

-----------------------------------------

20110419

 

37. Code::Blocks

http://www.codeblocks.org/home

 

38. Eclipse CDT

http://www.eclipse.org/cdt/

 

-----------------------------------------

20110707

 

39. mingwer

MinGWer is a MinGW distribution

http://code.google.com/p/mingwer/

 

 

-----------------------------------------

20120125

 

40. TakeoffGW

http://sourceforge.net/projects/takeoffgw/

 

-----------------------------------------

20131130

 

41. CodeLite（支持在编辑器内插入编译结果中的警告提示，自带TDM-GCC编译器）

http://codelite.org/

 

42. gtk-win32

http://hexchat.github.io/gtk-win32/

 

(20131220)

43 XhmikosR's Builds

http://xhmikosr.1f0.de/tools/

https://github.com/swolter/ffmpeg-windows-build/blob/master/build_ffmpeg.sh

(20140102)

Zeranoe FFmpeg

http://ffmpeg.zeranoe.com/builds/

 

(20140902)

44. kixy (py2.7对应mingw gcc 3.4.5）

http://kivy.org

 

45. railsinstaller（包含配置好的编译环境DevKit，对应tdm最新版mingw，还包含git）

http://www.railsinstaller.org

 

 

(20150305)

46. zinjai (c++ IDE，自带MINGW GCC 4.8)

http://sourceforge.net/projects/zinjai

 

(20150401)

47. MSYS2

http://sourceforge.net/projects/msys2

（安装gcc方法：

pacman -Sl | grep gcc

pacman -S mingw-w64-i686-gcc

不过有些包装不了

）

20151126补充：

安装说明请访问这里

https://msys2.github.io

例如安装gcc和sdl2

写道
pacman -S mingw-w64-x86_64-gcc mingw-w64-x86_64-SDL2{,_mixer,_image,_ttf}
 参考自：https://github.com/veandco/go-sdl2

 

 

20161011:

MinGW猫科研究所パック  

http://up-cat.net/MinGW%C7%AD%B2%CA%B8%A6%B5%E6%BD%EA%A5%D1%A5%C3%A5%AF.html  

 

 

 

(待补充...) 

 

二、使用libmysql（MySQL的C客户端）

官方没有直接给.a，要么在网上找，要么用reimp和dlltool生成，要么就直接把.lib当.o来用。

方法一：生成.exe时用现成的libmysql.a，然后使用-l编译。
例如$(CC) -o main.exe main.o -L. -lmysql

 libmysql.a下载请参考：
 http://blog.yam.com/jasonching58/article/25478748


 http://seefromus.com/browse.php?u=ff0e598c86b9f79e4T2lNamQzZDNMbTl3Wlc1M1pXSnpjR2xrWlhJdWIzSm5MMlJ2WTNWdFpXNTBZWFJwYjI0dmFHOTNMWFJ2TFd4cGJtc3RiR2xpYlhsemNXeHNhV0l0ZDJsMGFDMWtaWFl0WXkxdmNpMW5ZMk10ZFc1a1pYSXRkMmx1Wkc5M2N5OD0%3D&b=29
 你也可以自己生成libmysql.a，不过要用到reimp（需要单独去sourceforge下载），而且可能会不成功（我试了很多次都不行）。
 另外你需要自己找include目录（重新安装，选择自定义安装，然后勾选全部，装完后拷贝myssql目录下的include，然后-I指定）。


方法二：取安装包里的include和lib目录
 或者官方网站上的Connector/C
 http://dev.mysql.com/downloads/connector/c/
 然后把.lib与.o文件一起gcc即可

下面是方法二的Makefile

 

 

CC = gcc
CFLAGS = -g -I./include/ 

all: main.exe

main.exe: main.o 
	$(CC) -o main.exe main.o libmysql.lib

main.o: main.c
	$(CC) $(CFLAGS) -c -o $@ $< 

clean:
	rm -f *.o main.exe *.a
 

 

其实还有一种（错误的）方法，把STDCALL宏中的__stdcall去掉，然后用.dll与.o一起gcc，
不过发现会在读sql时崩溃，估计是出现脏指针。对于写操作倒是没问题的（没有用脏指针）

 

下面是我测试用的main.c，来源于
http://www.cnblogs.com/linbc/archive/2009/06/15/1503924.html

 

 

/*
 * main.c
 *
 *  Created on: 2010-8-2
 *      Author: Administrator
 */
#ifndef MAIN_H_
#define MAIN_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>

//#include <my_global.h>
#include <mysql.h>

static char *opt_host_name = "localhost";
static char *opt_user_name = "root";
static char *opt_password = "123456";
static unsigned int opt_port_num = 3306;
static char *opt_socket_name = NULL;
static char *opt_db_name = "test";
static unsigned int opt_flags = 0;

static MYSQL *conn;

void print_error(MYSQL *conn, const char *title){
    fprintf(stderr,"%s:\nError %u (%s)\n",title,mysql_errno(conn),mysql_error(conn));
}

void process_result_set(MYSQL *conn,MYSQL_RES *res_set){
    far MYSQL_ROW row;
    unsigned int i;

    while ((row = mysql_fetch_row(res_set)) != NULL){
        for(i=0;i<mysql_num_fields(res_set);i++){
            if (i > 0)
                fputc('\t',stdout);
            row[i] = row[i];
            printf("%1s",row[i] != NULL ? row[i] : "NULL");
        }
        fputc('\n',stdout);
    }

    if(mysql_errno(conn) != 0)
        print_error(conn,"mysql_fetch_row() failed");
    else
        printf("%lu rows returned \n",
            (unsigned long)mysql_num_rows(res_set));
}

int main(int argc, _TCHAR* argv[])
{
    if( (conn = mysql_init(NULL))== NULL){
        fprintf(stderr,"mysql 初始化失败(可能是内存溢出)!\n");
        exit(1);
    }

    if(mysql_real_connect(conn,opt_host_name,opt_user_name,opt_password,
        opt_db_name,opt_port_num,opt_socket_name,opt_flags) == NULL){

            fprintf(stderr,"mysql_real_connect 失败:\nError %u (%s)\n",
                mysql_errno(conn),mysql_error(conn));

            mysql_close(conn);
            exit(1);
    }

    if(mysql_query(conn,"insert into t (num, date) values (0, now());")){
        print_error(conn,"执行插入失败");
    }else{
        printf("插入成功,受影响行数:%lu\n",(unsigned long)mysql_affected_rows(conn));
    }

    if(mysql_query(conn,"select * from t")){
        print_error(conn,"mysql_query() error");
    }else{
        MYSQL_RES *res_set;
        res_set = mysql_store_result(conn);    /**//*生成结果集*/
        if(res_set == NULL)
            print_error(conn,"mysql_store_result failed");
        else {
            process_result_set(conn,res_set);
            mysql_free_result(res_set);
        }
    }

    /**//*断开*/
    mysql_close(conn);

    getchar();
    return 0;
}
#endif
 

 

#include <my_global.h>会造成很多警告，我把它注释了，但官方说最好加上，
#include <windows.h>是为了避免找不到winsock的定义（老问题了）

 

 

 

 

 ----------------------------------------------------------------------------------------------

 

 

 

 

 

 

 

 

 

三、从源码中使用MinGW简单编译libmysql。

如果直接用mysql提供的mysqlclient.lib进行静态链接（使用mingw的gcc），会使ld崩溃而编译失败。

唯一的方法是从源代码中构建。

官方源代码包中有说明文件介绍如何用CMake配合脚本进行配置，然后用VS打开工程进行编译。

这里不讨论这种方法，而是讨论假借这种方法把工程移到makefile后的情况。

下面介绍的是在MinGW中编译libmysql（MySQL 5.1.49）简单测试上面那段代码（静态库-g链接）
（注：因为是简单测试，所以只考虑到代码中涉及的libmysql的API，
其它API在编译时可能会有更为复杂的问题）

 

 

一、下载MySQL源代码
http://www.mysql.com/downloads/mysql/
Select Platform:选择Source Code

 

二、解压缩，然后写个Makefile（是我反复修改的，
方法是把CMake后的VC2008工程libmysql.vcproj中.c文件名抽取出来，
整理后所得），如下：

 

 

PLAT= none
CC= gcc
CPP= g++

#release : -O0 -g3 -Wall -fmessage-length=0
#debug : -O2 -g -Wall -fmessage-length=0

# Note1: uncomment this line "MYCFLAGS= -O2 -g" if you want to debug.
#        In CDT, right click project explorer and "Clean Project" to rebuild this project.
# 如果要换成debug模式，可以解除下句的注释 ,还有下文的Note2
MYCFLAGS= -O0 -g3

CFLAGS= $(MYCFLAGS) -Wall -fmessage-length=0 \
 -DWIN32 -D_WINDOWS -D_DEBUG -DFORCE_INIT_OF_VARS \
 -DENABLED_DEBUG_SYNC -DSAFEMALLOC -DSAFE_MUTEX -DUSE_TLS \
 -D_CRT_SECURE_NO_DEPRECATE -DWITH_CSV_STORAGE_ENGINE \
 -DWITH_HEAP_STORAGE_ENGINE -DWITH_MYISAM_STORAGE_ENGINE \
 -DWITH_MYISAMMRG_STORAGE_ENGINE -DWITH_PARTITION_STORAGE_ENGINE \
 -D_LIB -DYASSL_PREFIX -DYASSL_THREAD_SAFE -DHAVE_YASSL \
 -DCMAKE_CONFIGD -DDEFAULT_MYSQL_HOME="\"c:/Program Files/MySQL/MySQL Server 5.1/\"" \
 -DDEFAULT_BASEDIR="\"c:/Program Files/MySQL/\"" \
 -DMYSQL_DATADIR="\"c:/Program Files/MySQL/MySQL Server 5.1/data\"" \
 -DDEFAULT_CHARSET_HOME="\"c:/Program Files/MySQL/MySQL Server 5.1/\"" \
 -DPACKAGE=mysql -DSHAREDIR="\"share\"" -D__NT__ \
 -D_WIN32_WINNT=0x0501 -DCMAKE_INTDIR=\"Debug\" \
 -Dlibmysql_EXPORTS -D_WINDLL -D_MBCS \
 -DNO_OLDNAMES -DHAVE_RINT \
 -I./include -I./libmysql -I./regex -I./sql \
 -I./strings -I./zlib -I./dbug \
 -I./extra/yassl/taocrypt/mySTL \
 -I./extra/yassl/taocrypt/include \
 -I./extra/yassl/include 

CPPFLAGS = $(CFLAGS)

LIBS=
TESTCFLAGS= $(MYCFLAGS) -Wall -fmessage-length=0 \
 -I./include
TESTLIBS = ./lib/libmysql.dll.a

AR= ar rcu
RANLIB= ranlib
RM= rm -f

OBJECTS= zlib/adler32.o \
zlib/compress.o \
zlib/crc32.o \
zlib/deflate.o \
zlib/gzio.o \
zlib/infback.o \
zlib/inffast.o \
zlib/inflate.o \
zlib/inftrees.o \
zlib/trees.o \
zlib/uncompr.o \
zlib/zutil.o \
sql-common/client.o \
sql-common/my_time.o \
sql-common/pack.o \
sql/net_serv.o \
sql/password.o \
strings/bchange.o \
strings/bmove.o \
strings/bmove_upp.o \
strings/ctype-big5.o \
strings/ctype-bin.o \
strings/ctype-cp932.o \
strings/ctype-czech.o \
strings/ctype-euc_kr.o \
strings/ctype-eucjpms.o \
strings/ctype-extra.o \
strings/ctype-gb2312.o \
strings/ctype-gbk.o \
strings/ctype-latin1.o \
strings/ctype-mb.o \
strings/ctype-simple.o \
strings/ctype-sjis.o \
strings/ctype-tis620.o \
strings/ctype-uca.o \
strings/ctype-ucs2.o \
strings/ctype-ujis.o \
strings/ctype-utf8.o \
strings/ctype-win1250ch.o \
strings/ctype.o \
strings/int2str.o \
strings/is_prefix.o \
strings/my_strtoll10.o \
strings/llstr.o \
strings/longlong2str.o \
strings/my_vsnprintf.o \
strings/str2int.o \
strings/str_alloc.o \
strings/strcend.o \
strings/strcont.o \
strings/strend.o \
strings/strfill.o \
strings/strinstr.o \
strings/strmake.o \
strings/strmov.o \
strings/strnlen.o \
strings/strnmov.o \
strings/strtod.o \
strings/strtoll.o \
strings/strtoull.o \
strings/strxmov.o \
strings/strxnmov.o \
strings/xml.o \
vio/vio.o \
vio/viosocket.o \
vio/viossl.o \
vio/viosslfactories.o \
dbug/dbug.o \
dbug/factorial.o \
dbug/sanity.o \
mysys/array.o \
mysys/charset-def.o \
mysys/charset.o \
mysys/default.o \
mysys/errors.o \
mysys/hash.o \
mysys/my_sleep.o \
mysys/default_modify.o \
mysys/list.o \
mysys/mf_arr_appstr.o \
mysys/mf_cache.o \
mysys/mf_dirname.o \
mysys/mf_fn_ext.o \
mysys/mf_format.o \
mysys/mf_iocache.o \
mysys/mf_iocache2.o \
mysys/mf_loadpath.o \
mysys/mf_pack.o \
mysys/mf_path.o \
mysys/mf_tempfile.o \
mysys/mf_unixpath.o \
mysys/mf_wcomp.o \
mysys/mulalloc.o \
mysys/my_access.o \
mysys/my_alloc.o \
mysys/my_chsize.o \
mysys/my_compress.o \
mysys/my_create.o \
mysys/my_delete.o \
mysys/my_div.o \
mysys/my_error.o \
mysys/my_file.o \
mysys/my_fopen.o \
mysys/my_fstream.o \
mysys/my_gethostbyname.o \
mysys/my_getopt.o \
mysys/my_getwd.o \
mysys/my_init.o \
mysys/my_lib.o \
mysys/my_malloc.o \
mysys/my_messnc.o \
mysys/my_net.o \
mysys/my_once.o \
mysys/my_open.o \
mysys/my_pread.o \
mysys/my_pthread.o \
mysys/my_read.o \
mysys/my_realloc.o \
mysys/my_rename.o \
mysys/my_seek.o \
mysys/my_static.o \
mysys/my_symlink.o \
mysys/my_symlink2.o \
mysys/my_thr_init.o \
mysys/my_wincond.o \
mysys/my_winthread.o \
mysys/my_write.o \
mysys/safemalloc.o \
mysys/sha1.o \
mysys/string.o \
mysys/thr_mutex.o \
mysys/typelib.o \
mysys/mf_qsort.o \
mysys/my_getsystime.o \
mysys/my_sync.o \
libmysql/errmsg.o \
libmysql/get_password.o \
libmysql/dll.o \
libmysql/libmysql.o \
libmysql/manager.o \
extra/yassl/taocrypt/src/aes.o \
extra/yassl/taocrypt/src/aestables.o \
extra/yassl/taocrypt/src/algebra.o \
extra/yassl/taocrypt/src/arc4.o \
extra/yassl/taocrypt/src/asn.o \
extra/yassl/taocrypt/src/coding.o \
extra/yassl/taocrypt/src/des.o \
extra/yassl/taocrypt/src/dh.o \
extra/yassl/taocrypt/src/dsa.o \
extra/yassl/taocrypt/src/file.o \
extra/yassl/taocrypt/src/hash.o \
extra/yassl/taocrypt/src/integer.o \
extra/yassl/taocrypt/src/md2.o \
extra/yassl/taocrypt/src/md4.o \
extra/yassl/taocrypt/src/md5.o \
extra/yassl/taocrypt/src/misc.o \
extra/yassl/taocrypt/src/random.o \
extra/yassl/taocrypt/src/ripemd.o \
extra/yassl/taocrypt/src/rsa.o \
extra/yassl/taocrypt/src/sha.o \
extra/yassl/src/buffer.o \
extra/yassl/src/cert_wrapper.o \
extra/yassl/src/crypto_wrapper.o \
extra/yassl/src/handshake.o \
extra/yassl/src/handshake.o \
extra/yassl/src/lock.o \
extra/yassl/src/log.o \
extra/yassl/src/socket_wrapper.o \
extra/yassl/src/ssl.o \
extra/yassl/src/timer.o \
extra/yassl/src/yassl_error.o \
extra/yassl/src/yassl_imp.o \
extra/yassl/src/yassl_int.o \




# Note2: if you want to comment this line "MYCFLAGS= -O2 -g", 
#        please use "cleanbin" & "clean" and rebuild the project("Clean Project")
# 切换debug和release版时(即修改MYCFLAGS)，最好用下面的make all重新编译一次
#all : cleanbin bin/zlib.dll lib/libz.a bin/example.exe clean

all : libmysql.a test.exe

libmysql.dll : $(OBJECTS)
	$(CC) -shared -o $@ $(OBJECTS) $(LIBS)
	cp -p bin/zlib.dll lib/libmysql.dll.a
	
libmysql.a : $(OBJECTS)
	$(AR) $@ $(OBJECTS)
	#strip --strip-unneeded $@

#-l次序需要注意
test.exe : 
	gcc $(CFLAGS) -o $@ main.c -L. -lmysql -lws2_32 -lstdc++

clean : 
	rm -f $(OBJECTS)
	rm -f *.a *.dll *.exe
	
cleanbin :
	rm -f bin/libmysql.dll lib/libmysql.a lib/libmysql.dll.a
	
run : all
	bin/example.exe
 

 

 

三、创建新文件include/mysql_version.h，如下：

 

 

/* Copyright Abandoned 1996, 1999, 2001 MySQL AB
   This file is public domain and comes with NO WARRANTY of any kind */

/* Version numbers for protocol & mysqld */

#ifndef _mysql_version_h
#define _mysql_version_h
#ifdef _CUSTOMCONFIG_
#include <custom_conf.h>
#else
#define PROTOCOL_VERSION		10
#define MYSQL_SERVER_VERSION		"5.1.49"
#define MYSQL_BASE_VERSION		"mysqld-5.1"
#define MYSQL_SERVER_SUFFIX_DEF		""
#define FRM_VER				6
#define MYSQL_VERSION_ID		50149
#define MYSQL_PORT			3306
#define MYSQL_PORT_DEFAULT		0
#define MYSQL_UNIX_ADDR			"/tmp/mysql.sock"
#define MYSQL_CONFIG_NAME		"my"
#define MYSQL_COMPILATION_COMMENT	"Source distribution"

/* mysqld compile time options */
#endif /* _CUSTOMCONFIG_ */

#ifndef LICENSE
#define LICENSE				GPL
#endif /* LICENSE */

#endif /* _mysql_version_h */


 

 

四、创建将要测试的客户端c源文件main.c（和上面一样），如下

 

 

 

/*
 * main.c
 *
 *  Created on: 2010-8-2
 *      Author: Administrator
 */
#ifndef MAIN_H_
#define MAIN_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>

//#include <my_global.h>
#include <mysql.h>

static char *opt_host_name = "localhost";
static char *opt_user_name = "root";
static char *opt_password = "123456";
static unsigned int opt_port_num = 3306;
static char *opt_socket_name = NULL;
static char *opt_db_name = "test";
static unsigned int opt_flags = 0;

static MYSQL *conn;

void print_error(MYSQL *conn, const char *title){
    fprintf(stderr,"%s:\nError %u (%s)\n",title,mysql_errno(conn),mysql_error(conn));
}

void process_result_set(MYSQL *conn,MYSQL_RES *res_set){
    far MYSQL_ROW row;
    unsigned int i;

    while ((row = mysql_fetch_row(res_set)) != NULL){
        for(i=0;i<mysql_num_fields(res_set);i++){
            if (i > 0)
                fputc('\t',stdout);
            row[i] = row[i];
            printf("%1s",row[i] != NULL ? row[i] : "NULL");
        }
        fputc('\n',stdout);
    }

    if(mysql_errno(conn) != 0)
        print_error(conn,"mysql_fetch_row() failed");
    else
        printf("%lu rows returned \n",
            (unsigned long)mysql_num_rows(res_set));
}

int main(int argc, _TCHAR* argv[])
{
    if( (conn = mysql_init(NULL))== NULL){
        fprintf(stderr,"mysql 初始化失败(可能是内存溢出)!\n");
        exit(1);
    }

    if(mysql_real_connect(conn,opt_host_name,opt_user_name,opt_password,
        opt_db_name,opt_port_num,opt_socket_name,opt_flags) == NULL){

            fprintf(stderr,"mysql_real_connect 失败:\nError %u (%s)\n",
                mysql_errno(conn),mysql_error(conn));

            mysql_close(conn);
            exit(1);
    }

    if(mysql_query(conn,"insert into t (num, date) values (0, now());")){
        print_error(conn,"执行插入失败");
    }else{
        printf("插入成功,受影响行数:%lu\n",(unsigned long)mysql_affected_rows(conn));
    }

    if(mysql_query(conn,"select * from t")){
        print_error(conn,"mysql_query() error");
    }else{
        MYSQL_RES *res_set;
        res_set = mysql_store_result(conn);    /**//*生成结果集*/
        if(res_set == NULL)
            print_error(conn,"mysql_store_result failed");
        else {
            process_result_set(conn,res_set);
            mysql_free_result(res_set);
        }
    }

    /**//*断开*/
    mysql_close(conn);

    getchar();
    return 0;
}
#endif
 

 

 

五、修改mysys/my_init.c，加上MINGW32的判断和#include <stdint.h>，
否则，uintptr_t无定义错误（怀疑是因为这个类型在mingw的定义的头文件和VC2008的不一样）。

 

 

#if defined(__MINGW32__)
#include <stdint.h>
#endif

void my_parameter_handler(const wchar_t * expression, const wchar_t * function,
                          const wchar_t * file, unsigned int line,
                          uintptr_t pReserved)
{
  DBUG_PRINT("my",("Expression: %s  function: %s  file: %s, line: %d",
		   expression, function, file, line));
}

 

 


六、修改include/config-win.h，在inline前加上static，
使每个.o的inline函数符号不重复，避免符号冲突。
否则在链接时候出现大量multiple definition错误。

 

 

static inline double ulonglong2double(ulonglong value)
static inline ulonglong double2ulonglong(double d)

 

 

七、修改extra/yassl/taocrypt/include/runtime.hpp，加上MINGW32判断，
否则出现multiple definition of `__cxa_pure_virtual'

 

#if defined(__GNUC__) && !(defined(__ICC) || defined(__INTEL_COMPILER) || defined(__MINGW32__))
 

 

八、修改mysys/my_open.c，加上#undef __WIN__，屏蔽sopen的windows移植。
否则会出现undefined reference to `_dosmaperr'。

 

 

#include "mysys_priv.h"
#include "mysys_err.h"
#include <my_dir.h>
#include <errno.h>
#undef __WIN__
#if defined(__WIN__)
#include <share.h>
#endif


 


九、Makefile的问题


a)
Makefile编译参数加上-DNO_OLDNAMES -DHAVE_RINT否则会有一堆函数重复定义

 

b)
加入yaSSL时，出现大量类似信息：

undefined reference to `operator delete(void*)'
 
需要在编译参数中加入-lstdc++

 

c)
出现类似信息

undefined reference to `socket@12'
 
需要在编译参数中加入-lws2_32

 

d)
注意顺序要在-lmysql后

test.exe : 
 gcc $(CFLAGS) -o $@ main.c -L. -lmysql -lws2_32 -lstdc++
 

否则会导致-l失效

 

十、执行make clean && make最后生成exe为7.75 MB（-g编译），运行正常（没有出现崩溃情况）

 

 

------------------------------------------------------------------------

 

 

 

 

2010-11-06补充：

mingw相关信息的链接

 

minGW+mSYS+Apache+PHP+Postgresql
https://www.prodigyone.com/in/doc/docs.php?view=1&nid=224

 

MinGW安装方法
http://tech.idv2.com/2006/03/27/mingw-install-note/

 

monotone/ Building/ Windows/ MinGW 
http://wiki.monotone.ca/Building/Windows/MinGW/

 

Command line build using MinGW and autotools
http://wiki.apache.org/logging-log4cxx/MSWindowsBuildInstructions

在mingw下编译mplayer(转载)
http://hi.baidu.com/honanlinux/blog/item/e24f954a01bccff682025ca7.html

 

 

------------------------------------------------------------------------

 

profile.d配置方案：

 

保存在/etc/profile.d/local.sh（由/etc/profile调用）

把/local/bin加入PATH，把/local/include、/local/lib加入编译器的头文件和库文件搜索路径。

 

 

#! /usr/bin/sh

export CPATH=/usr/local/include:/usr/include:$CPATH
export C_INCLUDE_PATH=/usr/local/include:/usr/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/usr/local/include:/usr/include:$CPLUS_INCLUDE_PATH
export OBJC_INCLUDE_PATH=/usr/local/include:/usr/include:$OBJC_INCLUDE_PATH
export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=/usr/local/lib:/usr/lib:$LIBRARY_PATH
export LIBPATH=/usr/local/lib:/usr/lib:$LIBPATH
 

------------------

20111022补充

 

对于在Linux上自己编译安装的程序，由于在执行./configure --prefix=<绝对路径>指定的路径

一般在home目录中，所以编译存在依赖关系的程序时，通常要用

$ PKG_CONFIG_PATH=<绝对路径>/lib/pkgconfig/:$PKG_CONFIG_PATH ./configure --prefix=<绝对路径>

或

$ export PKG_CONFIG_PATH=<绝对路径>/lib/pkgconfig/:$PKG_CONFIG_PATH

$ ./configure --prefix=<绝对路径>

使configure能准确找到库安装的位置

使用

$ LD_LIBRARY_PATH=<绝对路径>/lib:$LD_LIBRARY_PATH ./xxx

或

$ export LD_LIBRARY_PATH=<绝对路径>/lib:$LD_LIBRARY_PATH

$ ./xxx

指定./xxx程序需要用到的.so文件所在的路径。

（如果使用sudo，则环境变量LD_LIBRARY_PATH的赋值必须跟在sudo后面）

 

-------------------------------

2012-01-06

 

更换ubuntu的软件源

ubuntu的apt-get有时候下载会很慢，需要更换软件源指向国内的镜像以加速下载。

 

Administration->software sources

->Download from:选择最近的镜像

 

---------------------------------------------

apt-get使用问题：

 

 

$ sudo apt-cache search boost

搜索软件包

 

$ sudo apt-get install libboost1.40-all-dev 

安装boost（一定要用all-dev，不要用dev，否则不全）

 

---------------------------------------------

 

20150618

关于64位exe/dll编译问题

详细请参考上面ossbuild的注释

有时候需要编译64位机器码，例如32位JNI不兼容64位JRE（运行报错），

这时候就需要重新编译成64位的dll。

 

有些工具链使用-m64会失败，需要用-b参数指定gcc前缀才能生成64位exe（例如上面的ossbuild下载里的msys_v11）

但有些工具链可以同时使用-m32和-m64参数，例如tdm-gcc-64

 

---------------------------------------------

 20160819：

用Mingw编译boost请注意，需要在参数中指定toolset为mingw（默认识别为gcc，可能会导致编译错误）：

./bootstrap.sh --with-toolset=mingw，

或者自己去把bootstrap.sh里面那个mingw的条件判断TOOLSET=gcc改成TOOLSET=mingw 

 

执行b2或bjam之前要修改bootstrap.sh生成的文件project-config.jam，把mingw改成gcc，否则会产生编译错误

 

写道
if ! mingw in [ feature.values <toolset> ]
{
using gcc ;
}

project : default-build <toolset>gcc ;
 

把using mingw改成using gcc

把<toolset>mingw改成<toolset>gcc

 

 编译参数可参考官方的写法：

写道
b2 toolset=gcc stage
 

 安装则执行b2 install

 

---------------------------------------------

（后续，待修改）

 

更新日志

2015-06-18：关于64位exe/dll编译问题

2011-11-02：标注一些已经废弃的网页

2011-04-22：补充profile.d配置方案

2011-03-26：压缩一些内容

2010-12-12：mplayer工具链

2010-11-20：添加i18n-zh链接

 

 

相关资源：InstantMinGWStarter资源
————————————————
版权声明：本文为CSDN博主「umier2000」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/umier2000/article/details/83677863
