#include<benchmark/benchmark.h>
#include"fibonacci.cpp"




static void bench_fib_rec(benchmark::State &state){

while(state.KeepRunning()){

	fib_recursive(40);

}
	
}
BENCHMARK(bench_fib_rec);



static void bench_fib_itr(benchmark::State &state){

while(state.KeepRunning()){

        fib_iterative(40);

}

}
BENCHMARK(bench_fib_itr);


BENCHMARK_MAIN();
