# get the ftrace log
echo > /tmp/trace.log
cp /sys/kernel/debug/tracing/trace /tmp/trace.log
echo  > /sys/kernel/debug/tracing/trace
cat /tmp/trace.log
