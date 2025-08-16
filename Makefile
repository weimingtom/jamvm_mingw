all:
	(cd classpath-0.99/native/jni/java-lang; make -j8)
	(cd classpath-0.99/native/jni/java-io; make -j8)
	(cd classpath-0.99/native/jni/java-nio; make -j8)
	(cd jamvm-2.0.0; make -j8)
	
clean:
	(cd classpath-0.99/native/jni/java-lang; make clean)
	(cd classpath-0.99/native/jni/java-io; make clean)
	(cd classpath-0.99/native/jni/java-nio; make clean)
	(cd jamvm-2.0.0; make clean)
	
test:
	(cd jamvm-2.0.0; make test)
test2:
	(cd jamvm-2.0.0; make test2)
debug:
	(cd jamvm-2.0.0; make debug)
