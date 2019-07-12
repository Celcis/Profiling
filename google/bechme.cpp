#include<benchmark/benchmark.h>
#include <vector>

static void bench_(benchmark::State &state){
	while(state.KeepRunning()){
		std::vector<int> v;
		v.push_back(42);
	}
}

BENCHMARK(bench_);
BENCHMARK_MAIN();
