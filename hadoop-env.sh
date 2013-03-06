# Set Hadoop-specific environment variables here.

# The only required environment variable is JAVA_HOME.  All others are
# optional.  When running a distributed configuration it is best to
# set JAVA_HOME in this file, so that it is correctly defined on
# remote nodes.

# The java implementation to use.  Required.
# export JAVA_HOME=/usr/lib/j2sdk1.6-sun
export JAVA_HOME=/usr/java/latest

# Extra Java CLASSPATH elements.  Optional.
# export HADOOP_CLASSPATH="<extra_entries>:$HADOOP_CLASSPATH"

# The maximum amount of heap to use, in MB. Default is 1000.
# export HADOOP_HEAPSIZE=2000

# Extra Java runtime options.  Empty by default.
# if [ "$HADOOP_OPTS" == "" ]; then export HADOOP_OPTS=-server; else HADOOP_OPTS+=" -server"; fi
export JAVA_LIBRARY_PATH=/home/ekoontz/hadoop-runtime/lib/native
# Command specific options appended to HADOOP_OPTS when specified
export HADOOP_NAMENODE_OPTS="-Dcom.sun.management.jmxremote $HADOOP_NAMENODE_OPTS"
export HADOOP_SECONDARYNAMENODE_OPTS="-Dcom.sun.management.jmxremote $HADOOP_SECONDARYNAMENODE_OPTS"
export HADOOP_DATANODE_OPTS="-Dcom.sun.management.jmxremote $HADOOP_DATANODE_OPTS"
export HADOOP_BALANCER_OPTS="-Dcom.sun.management.jmxremote $HADOOP_BALANCER_OPTS"
export HADOOP_JOBTRACKER_OPTS="-Dcom.sun.management.jmxremote $HADOOP_JOBTRACKER_OPTS"
#export HADOOP_TASKTRACKER_OPTS=" -Djava.library.path=/home/ekoontz/mr1/build/c++/Linux-amd64-64/lib "
#export HADOOP_TASKTRACKER_OPTS=" -Djava.library.path=/home/ekoontz/hadoop-common/build/native/Linux-amd64-64/lib "
#export HADOOP_TASKTRACKER_OPTS=" -Djava.library.path=/home/ekoontz/hadoop-common/hadoop-dist/target/hadoop-2.1.0.tm6/lib/native "
#export HADOOP_TASKTRACKER_OPTS=" -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5009" 
export HADOOP_TASKTRACKER_OPTS=" -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5009" 
export HADOOP_TASKTRACKER_USER=mapred
# The following applies to multiple commands (fs, dfs, fsck, distcp etc)
# export HADOOP_CLIENT_OPTS
#export HADOOP_CLIENT_OPTS=" -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5010" 
#export HADOOP_OPTS=" -Djava.library.path=/home/ekoontz/hadoop-common/build/native/Linux-amd64-64/lib "
#export HADOOP_OPTS=" -Djava.library.path=/home/ekoontz/hadoop-common/hadoop-dist/target/hadoop-2.1.0.tm6/lib/native "
#export HADOOP_OPTS=" -Djava.library.path=/home/ekoontz/native "
# Extra ssh options.  Empty by default.
# export HADOOP_SSH_OPTS="-o ConnectTimeout=1 -o SendEnv=HADOOP_CONF_DIR"

#export LD_LIBRARY_PATH=/usr/java/latest/jre/lib/amd64:/home/ekoontz/hadoop-runtime/lib/native

# Where log files are stored.  $HADOOP_HOME/logs by default.
# export HADOOP_LOG_DIR=${HADOOP_HOME}/logs
export HADOOP_LOG_DIR=/tmp/hadoop-logs
# File naming remote slave hosts.  $HADOOP_HOME/conf/slaves by default.
# export HADOOP_SLAVES=${HADOOP_HOME}/conf/slaves

# host:path where hadoop code should be rsync'd from.  Unset by default.
# export HADOOP_MASTER=master:/home/$USER/src/hadoop

# Seconds to sleep between slave commands.  Unset by default.  This
# can be useful in large clusters, where, e.g., slave rsyncs can
# otherwise arrive faster than the master can service them.
# export HADOOP_SLAVE_SLEEP=0.1

# The directory where pid files are stored. /tmp by default.
# export HADOOP_PID_DIR=/var/hadoop/pids

# A string representing this instance of hadoop. $USER by default.
# export HADOOP_IDENT_STRING=$USER

# The scheduling priority for daemon processes.  See 'man nice'.
# export HADOOP_NICENESS=10
