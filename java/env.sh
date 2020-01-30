# update(-java)-alternatives does not manage JAVA_HOME
# this follows the alternatives-java symlink to find JAVA_HOME
#export JAVA_HOME="/usr/lib/jvm/$(readlink -f /usr/bin/java | cut -d / -f 5)/"
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")
