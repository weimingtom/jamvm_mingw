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

OBJS += java_lang_VMSystem.o 
OBJS += java_lang_VMFloat.o 
OBJS += java_lang_VMDouble.o 
OBJS += java_lang_VMMath.o 
OBJS += java_lang_VMProcess.o

OBJS += ../classpath/jcl.o 

OBJS += ../native-lib/cpnet.o 
OBJS += ../native-lib/cpio.o 
OBJS += ../native-lib/cpproc.o 

OBJS += ../../fdlibm/dtoa.o 
OBJS += ../../fdlibm/e_acos.o 
OBJS += ../../fdlibm/e_asin.o 
OBJS += ../../fdlibm/e_atan2.o 
OBJS += ../../fdlibm/e_cosh.o 
OBJS += ../../fdlibm/e_exp.o 
OBJS += ../../fdlibm/e_fmod.o 
OBJS += ../../fdlibm/e_hypot.o 
OBJS += ../../fdlibm/e_log.o 
OBJS += ../../fdlibm/e_log10.o 
OBJS += ../../fdlibm/e_pow.o 
OBJS += ../../fdlibm/e_remainder.o 
OBJS += ../../fdlibm/e_rem_pio2.o 
OBJS += ../../fdlibm/e_scalb.o 
OBJS += ../../fdlibm/e_sinh.o 
OBJS += ../../fdlibm/e_sqrt.o 
OBJS += ../../fdlibm/k_cos.o 
OBJS += ../../fdlibm/k_rem_pio2.o 
OBJS += ../../fdlibm/k_sin.o 
OBJS += ../../fdlibm/k_tan.o 
OBJS += ../../fdlibm/mprec.o 
OBJS += ../../fdlibm/s_atan.o 
OBJS += ../../fdlibm/s_cbrt.o 
OBJS += ../../fdlibm/s_ceil.o 
OBJS += ../../fdlibm/s_copysign.o 
OBJS += ../../fdlibm/s_cos.o 
OBJS += ../../fdlibm/s_expm1.o 
OBJS += ../../fdlibm/s_fabs.o 
OBJS += ../../fdlibm/sf_fabs.o 
OBJS += ../../fdlibm/s_finite.o 
OBJS += ../../fdlibm/s_floor.o 
OBJS += ../../fdlibm/s_log1p.o 
OBJS += ../../fdlibm/sf_rint.o 
OBJS += ../../fdlibm/s_rint.o 
OBJS += ../../fdlibm/s_scalbn.o 
OBJS += ../../fdlibm/s_sin.o 
OBJS += ../../fdlibm/s_tan.o 
OBJS += ../../fdlibm/s_tanh.o 
OBJS += ../../fdlibm/strtod.o 
OBJS += ../../fdlibm/w_acos.o 
OBJS += ../../fdlibm/w_asin.o 
OBJS += ../../fdlibm/w_atan2.o 
OBJS += ../../fdlibm/w_cosh.o 
OBJS += ../../fdlibm/w_exp.o 
OBJS += ../../fdlibm/w_fmod.o 
OBJS += ../../fdlibm/w_hypot.o 
OBJS += ../../fdlibm/w_log.o 
OBJS += ../../fdlibm/w_log10.o 
OBJS += ../../fdlibm/w_pow.o 
OBJS += ../../fdlibm/w_remainder.o 
OBJS += ../../fdlibm/w_sinh.o 
OBJS += ../../fdlibm/w_sqrt.o 

all : libjavalang.so

libjavalang.so : $(OBJS)
	$(CC) -shared $(CFLAGS) -o $@ $(OBJS) $(LIBS)
	cp libjavalang.so /lib/.
	
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

%.o : %.cpp
	$(CPP) $(CFLAGS) -o $@ -c $<	

clean :
	$(RM) $(OBJS) *.a *.so


