# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
alias psfg="sudo ps faux | grep -v grep | grep "
alias tlpg="sudo netstat -tulpn | grep "
alias hvcek="cd /home/vagrant/confluent/etc/kafka"
alias hvcl="cd /home/vagrant/confluent/logs"
alias hvces="cd /home/vagrant/confluent/etc/schema-registry"
alias hvkc="cd /home/vagrant/kafka/config"
alias hvkl="cd /home/vagrant/kafka/logs"
alias hvk="cd /home/vagrant/kafka"
alias essm="cd /etc/systemd/system/multi-user.target.wants"
alias ess="cd /etc/systemd/system"
alias ulss="cd /usr/lib/systemd/system"
alias hvhl="cd /home/vagrant/hadoop/logs"
alias hvheh="cd /home/vagrant/hadoop/etc/hadoop"
alias hvhs="cd /home/vagrant/hadoop/sbin"
alias hvhb="cd /home/vagrant/hadoop/bin"
alias hvs="cd /home/vagrant/spark"
alias hvc="cd /home/vagrant/confluent"
alias hvsc="cd /home/vagrant/spark/conf"
alias hvhc="cd /home/vagrant/hive/conf"
alias hvhbc="cd /home/vagrant/hbase/conf"
alias hvhbl="cd /home/vagrant/hbase/logs"
alias hvhbb="cd /home/vagrant/hbase/bin"
alias tls="tmux ls"
alias tks="tmux kill-session -t "
alias tas="tmux attach-session -t "

# User specific aliases and functions
export SRVPASS=serversecret
export CLIPASS=clisec
export JAVA_HOME=/usr/lib/jvm/java-openjdk
export SPARK_HOME=/home/vagrant/spark
export CONFLUENT_HOME=/home/vagrant/confluent
export HADOOP_HOME=/home/vagrant/hadoop
export HIVE_HOME=/home/vagrant/hive
export HBASE_HOME=/home/vagrant/hbase
export KAFKA_HOME=/home/vagrant/kafka
export PATH=$PATH:$SPARK_HOME/bin:$HADOOP_HOME/bin:$CONFLUENT_HOME/bin:/home/vagrant/cassandra/bin:/home/vagrant/cassandra/tools/bin:$HIVE_HOME/bin:$HBASE_HOME/bin

