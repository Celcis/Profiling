1. Create a tracing my-kernel-session --output=/tmp/my-kernel-trace
$ lttng create my-kernel-session --output=/tmp/my-kernel-trace

2. List the available kernel tracepoints and system calls:
$ lttng list --kernel
$ lttng list --kernel --syscall

3.
