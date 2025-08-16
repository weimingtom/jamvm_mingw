CC := gcc
LD := ld
RM := rm -f
AR := ar rcs
CFLAGS := -g3
CFLAGS += -O0 
CFLAGS += -DHAVE_CONFIG_H 
CFLAGS += -I. 
CFLAGS += -I./include
CFLAGS += -I./src 
CFLAGS += -I./src/classlib/gnuclasspath 
CFLAGS += -I./src/interp/engine 
CFLAGS += -I./src/interp

#-ldl -lrt -lpthread
LIBS := -L./lib -lz -lm -lpthread -lws2_32
OBJS := 
OBJS += src/jam.o
OBJS += src/alloc.o 
OBJS += src/cast.o 
OBJS += src/class.o 
OBJS += src/dll.o 
OBJS += src/excep.o 
OBJS += src/execute.o 
OBJS += src/hash.o 
OBJS += src/jni.o 
OBJS += src/lock.o 
OBJS += src/natives.o 
OBJS += src/reflect.o 
OBJS += src/resolve.o 
OBJS += src/string.o 
OBJS += src/thread.o 
OBJS += src/utf8.o 
OBJS += src/zip.o 
OBJS += src/properties.o 
OBJS += src/dll_ffi.o 
OBJS += src/access.o 
OBJS += src/frame.o 
OBJS += src/init.o 
OBJS += src/hooks.o 
OBJS += src/symbol.o 
OBJS += src/shutdown.o 
OBJS += src/time.o 
OBJS += src/sig.o 
OBJS += src/stubs.o 
OBJS += src/jni-stubs.o 
### ???./src/os/linux/i386/jni-stubs.c
OBJS += src/interp/direct.o 
OBJS += src/interp/inlining.o 
OBJS += src/interp/engine/interp.o 
OBJS += src/interp/engine/interp2.o 
OBJS += src/interp/engine/relocatability.o

#### 
#OBJS += src/os/linux/x86_64/callNative.o
OBJS += src/os/linux/x86_64/dll_md.o
OBJS += src/os/linux/x86_64/init.o 
OBJS += src/os/linux/os.o 


OBJS += src/classlib/gnuclasspath/alloc.o 
OBJS += src/classlib/gnuclasspath/annotations.o 
OBJS += src/classlib/gnuclasspath/class.o 
OBJS += src/classlib/gnuclasspath/dll.o 
OBJS += src/classlib/gnuclasspath/excep.o 
OBJS += src/classlib/gnuclasspath/frame.o 
OBJS += src/classlib/gnuclasspath/jni.o 
OBJS += src/classlib/gnuclasspath/natives.o 
OBJS += src/classlib/gnuclasspath/properties.o 
OBJS += src/classlib/gnuclasspath/reflect.o 
OBJS += src/classlib/gnuclasspath/thread.o

OBJS += include/sysinfo.o
OBJS += include/dlfcn.o


all : jamvm

jamvm : $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS)
	
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<
	
%.o : %.S
	$(CC) $(CFLAGS) -o $@ -c $<
clean :
	$(RM) $(OBJS) *.exe  jamvm
#*.exe.stackdump

#src/config.h #define TRACEDLL 1
#-verbose == -verbose:class
#added -verbose:jni
test:
	./jamvm -verbose:jni -verbose:class -Xbootclasspath:./classes.zip:./glibj.zip HelloWorld

#./jamvm -verbose -Xbootclasspath:./classes.zip:./glibj.zip HelloWorld

test2:
	./jamvm -Xbootclasspath:./classes.zip:./glibj.zip HelloWorld
debug:
	gdb --args ./jamvm -verbose -Xbootclasspath:./classes.zip:./glibj.zip HelloWorld

