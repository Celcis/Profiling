1. clang++ -Wall -Werror -std=c++14 -pedantic -fno-exceptions -pthread -o bench vector/bench.cpp -lbenchmark

2. Lets call performance event counter of Linux

$ perf stat ./bench
#ISSUE: runnig perf tool in docker container ain't usual then has to be allowed
following command
#### docker run -it --mount type=tmpfs,tmpfs-size=512M,destination=/app/ alpy

3. perf stat is really usefull
But not telling us where is the bottleneck#

3.1. perf record ./bench
3.2 perf report 

But we need call graph

3.3 perf record -g ./executable

3.4. perf report -g (-g interrupting the program then looked current stack position)
After then could go into deep of code 

-fno-omit-frame-pointer flags telling the compiler stop deleting frame pointer (add while compiling)
