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

OBJS += gnu_java_nio_VMPipe.o 
OBJS += gnu_java_nio_VMChannel.o 
OBJS += gnu_java_nio_VMSelector.o 
OBJS += gnu_java_nio_charset_iconv_IconvDecoder.o 
OBJS += gnu_java_nio_charset_iconv_IconvEncoder.o 
OBJS += java_nio_MappedByteBufferImpl.o 
OBJS += java_nio_VMDirectByteBuffer.o 
OBJS += gnu_java_nio_EpollSelectorImpl.o 
OBJS += gnu_java_nio_KqueueSelectorImpl.o

OBJS += ../classpath/jcl.o 

OBJS += ../native-lib/cpnet.o 
OBJS += ../native-lib/cpio.o 
OBJS += ../native-lib/cpproc.o 

all : libjavanio.so

libjavanio.so : $(OBJS)
	$(CC) -shared $(CFLAGS) -o $@ $(OBJS) $(LIBS)
	cp libjavanio.so /lib/.
	
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

%.o : %.cpp
	$(CPP) $(CFLAGS) -o $@ -c $<	

clean :
	$(RM) $(OBJS) *.a *.so


