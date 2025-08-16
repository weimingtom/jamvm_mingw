# jamvm_mingw
[WIP] My JamVM and GNU Classpath mingw build, not good just for fun

## How to build and run
* Not sure, I just build it with my msys_v11, other mingw toolchains are not tested
https://code.google.com/archive/p/ossbuild/downloads?page=2   
https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/ossbuild/msys_v11.7z  
* make clean && make && make test  
* Before make test and make test2, need to copy copy_to_c_pan/**/*.so to C:/  

## TODO
* Remove jamvm-2.0.0/lib/libz.a
* Don't need to copy copy_to_c_pan/**/*.so (merge into exe)
* Compiled with msys2

