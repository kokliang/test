sudo rm -rf  /home/vagrant/hadoop/etc/hadoop/core-site.xml
sudo rm -rf  /home/vagrant/hadoop/etc/hadoop/hdfs-site.xml
sudo rm -rf /home/vagrant/hadoop/etc/hadoop/yarn-site.xml
sudo rm -rf /home/vagrant/hadoop/etc/hadoop/mapred-site.xml
sudo rm -rf /home/vagrant/hadoop/etc/hadoop/hadoop-env.sh
sudo rm -rf /home/vagrant/hadoop/etc/hadoop/workers
sudo rm -rf /home/vagrant/hadoop/etc/hadoop/capacity-scheduler.xml
sudo rm -rf /home/vagrant/hive/conf/hive-site.xml
sudo rm -rf /home/vagrant/spark/conf/spark-defaults.conf
sudo rm -rf /home/vagrant/spark/conf/hive-site.xml
sudo rm -rf /home/vagrant/hive/lib/mysql-connector-java.jar
sudo rm -rf /home/vagrant/spark/jars/mysql-connector-java.jar

sudo ln -s /vagrant/configs/core-site.xml /home/vagrant/hadoop/etc/hadoop/core-site.xml
sudo ln -s /vagrant/configs/hdfs-site.xml /home/vagrant/hadoop/etc/hadoop/hdfs-site.xml
sudo ln -s /vagrant/configs/yarn-site.xml /home/vagrant/hadoop/etc/hadoop/yarn-site.xml
sudo ln -s /vagrant/configs/mapred-site.xml /home/vagrant/hadoop/etc/hadoop/mapred-site.xml
sudo ln -s /vagrant/configs/workers /home/vagrant/hadoop/etc/hadoop/workers
sudo ln -s /vagrant/configs/capacity-scheduler_default_orig.xml /home/vagrant/hadoop/etc/hadoop/capacity-scheduler.xml
sudo ln -s /vagrant/configs/hadoop-env.sh /home/vagrant/hadoop/etc/hadoop/hadoop-env.sh
sudo ln -s /vagrant/configs/hive-site.xml /home/vagrant/hive/conf/hive-site.xml
sudo ln -s /vagrant/configs/spark-defaults.conf /home/vagrant/spark/conf/spark-defaults.conf
sudo ln -s /vagrant/configs/hive-site.xml /home/vagrant/spark/conf/hive-site.xml

sudo ln -s /usr/share/java/mysql-connector-java.jar /home/vagrant/hive/lib/mysql-connector-java.jar
sudo ln -s /usr/share/java/mysql-connector-java.jar /home/vagrant/spark/jars/mysql-connector-java.jar
