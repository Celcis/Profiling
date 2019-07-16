# Following instruction shows usage of gbenchmark and perf tool for a c++ application
### Steps
0. Compiling our program

`$ clang++ -Wall -Werror -std=c++14 -pedantic -fno-exceptions -pthread -o bench vector/bench.cpp -lbenchmark`

1. Lets call performance event counter of Linux

`$ docker run -it --mount type=tmpfs,tmpfs-size=512M,destination=/app/ alpy
`

#### $ perf stat ./bench #ISSUE: runnig perf tool in docker container ain't usual then has to be allowed following command 
perf stat is really usefull But not telling us where is the bottleneck#
2.`perf stat ./bench`

3.`perf record -g ./bench`

4. `perf report -g`

#### perf report -g (-g interrupting the program then looked current stack position) After then could go into deep of code

#### -fno-omit-frame-pointer flags telling the compiler stop deleting frame pointer (add while compiling)
