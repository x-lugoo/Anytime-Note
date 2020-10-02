debugfs=/sys/kernel/debug
echo nop > $debugfs/tracing/current_tracer
echo 0 > $debugfs/tracing/tracing_on
#you can change the depth depends on watching the max stack
echo 20 > $debugfs/tracing/max_graph_depth
echo $$ > $debugfs/tracing/set_ftrace_pid
echo function_graph > $debugfs/tracing/current_tracer
#replace nvme_queue_rq by your function name
echo nvme_queue_rq > $debugfs/tracing/set_graph_function
echo 1 > $debugfs/tracing/tracing_on
exec "$@"

