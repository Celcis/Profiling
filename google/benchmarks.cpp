#include <benchmark/benchmark.h>
#include <vector>

// Stopping optimazing of compiler
static void escape(void *p){
asm volatile("":: "g"(p): "memory");
}

// writing all memory without any instruction
static void clobber(){
  asm volatile ("" :: :"memory");
}
