CC := gcc
CPP := g++
LD := ld
RM := rm -f
AR := ar rcs
CFLAGS := -I. 
CFLAGS += -I.. 
CFLAGS += -I../../../include
CFLAGS += -I../../../native/fdlibm 
CFLAGS += -I../../../native/jni/native-lib
CFLAGS += -I../../../native/jni/classpath

CFLAGS += -DHAVE_CONFIG_H -fPIC -DPIC

LIBS := -lws2_32

OBJS := 

OBJS += java_io_VMConsole.o 
OBJS += java_io_VMFile.o 
OBJS += java_io_VMObjectInputStream.o 
OBJS += java_io_VMObjectStreamClass.o

OBJS += ../classpath/jcl.o 

OBJS += ../native-lib/cpnet.o 
OBJS += ../native-lib/cpio.o 
OBJS += ../native-lib/cpproc.o 

all : libjavaio.so

libjavaio.so : $(OBJS)
	$(CC) -shared $(CFLAGS) -o $@ $(OBJS) $(LIBS)
	cp libjavaio.so /lib/.
	
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

%.o : %.cpp
	$(CPP) $(CFLAGS) -o $@ -c $<	

clean :
	$(RM) $(OBJS) *.a *.so


