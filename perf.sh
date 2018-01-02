
#generate 

rm perf.data* -rf
perf record -e cpu-clock ./bin/$APPN $FFILE $SSHOW 11111 ./log1/


# show

perf report



#other=================================

 12 #=======tcmalloc=====================================================
 13 function TCMALLOC(){
 14         # 1.multiple files
 15         #env HEAPPROFILE=./heaps/nn.hprof  ./bin/$APPN $FFILE $SSHOW > log.txt
 16 
 17         # 2.only one file after exit
 18         #env HEAP_CHECK_TEST_POINTER_ALIGNMENT=1  HEAP_CHECK_MAX_POINTER_OFFSET=-1 HEAPCHECK=normal ./bin/$APPN $FFILE $SSHOW > log.txt
 19         env HEAPCHECK=normal ./bin/$APPN $FFILE $SSHOW > log.txt
 20 
 21         # 3.multiple files
 22         #env HEAPPROFILE=./heaps/nn.hprof HEAPCHECK=normal ./bin/$APPN $FFILE $SSHOW > log.txt
 23 
 24 }
 25 #=======valgrind=====================================================
 26 function VALGRIND(){
 27         # 1.memory
 28         #valgrind --tool=memcheck --leak-check=full --log-file=out.txt ./bin/$APPN $FFILE $SSHOW > log.txt
 29 
 30         # 2.thread
 31         valgrind --tool=helgrind --log-file=out.txt ./bin/$APPN $FFILE $SSHOW > log.txt
 32 
 33 }
 34 
 35 #=======normal=====================================================
 36 
 37 function NORMAL(){
 38         rm perf.data* -rf
 39 
 40         perf record -e cpu-clock ./bin/$APPN $FFILE $SSHOW 11111 ./log1/
 41 }
