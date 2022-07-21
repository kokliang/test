#!/bin/bash
# create properties files
# create service files
# create jaas_conf files
cp ./kconfs/server.properties.zkauth ./kconfs/server.properties.master.zkauth
cp ./kconfs/server.properties.xzkauth ./kconfs/server.properties.master.xzkauth
cp ./kconfs/kafka.service.allwk  ./kconfs/kafka.service.master

# for each of the machines the kafka properties file, the jass conf file, the service file
# create xzkauth and zkauth and replace master with node1 and set broker.id =1
cp ./kconfs/server.properties.xzkauth ./kconfs/server.properties.node1.xzkauth
sed -e s/broker.id=0/broker.id=1/g -e s/master.e4rlearning/node1.e4rlearning/g -e s/kafka.master/kafka.node1/g kconfs/server.properties.xzkauth | sed -e  s/zookeeper.connect=node1.e4rlearning/zookeeper.connect=master.e4rlearning/g > kconfs/server.properties.node1.xzkauth

sed -e s/broker.id=0/broker.id=1/g -e s/master.e4rlearning/node1.e4rlearning/g -e s/kafka.master/kafka.node1/g kconfs/server.properties.zkauth | sed -e  s/zookeeper.connect=node1.e4rlearning/zookeeper.connect=master.e4rlearning/g > kconfs/server.properties.node1.zkauth

sed -e s/kafka_server_master/kafka_server_node1/g -e  s/^Requires.*/''/g kconfs/kafka.service.allwk > kconfs/kafka.service.node1

sed  -e s#kafka/master#kafka/node1#g -e s#kafka.master#kafka.node1#g kconfs/kafka_server_master_jaas.conf  >kconfs/kafka_server_node1_jaas.conf

# create xzkauth and zkauth and replace master with node2 and set broker.id =2
cp ./kconfs/server.properties.xzkauth ./kconfs/server.properties.node2.xzkauth
sed -e s/broker.id=0/broker.id=2/g -e s/master.e4rlearning/node2.e4rlearning/g -e s/kafka.master/kafka.node2/g kconfs/server.properties.xzkauth | sed -e  s/zookeeper.connect=node2.e4rlearning/zookeeper.connect=master.e4rlearning/g > kconfs/server.properties.node2.xzkauth

sed -e s/broker.id=0/broker.id=2/g -e s/master.e4rlearning/node2.e4rlearning/g -e s/kafka.master/kafka.node2/g kconfs/server.properties.zkauth | sed -e  s/zookeeper.connect=node2.e4rlearning/zookeeper.connect=master.e4rlearning/g > kconfs/server.properties.node2.zkauth

sed -e s/kafka_server_master/kafka_server_node2/g -e  s/^Requires.*/''/g kconfs/kafka.service.allwk > kconfs/kafka.service.node2

sed  -e s#kafka/master#kafka/node2#g -e s#kafka.master#kafka.node2#g kconfs/kafka_server_master_jaas.conf  >kconfs/kafka_server_node2_jaas.conf

# create xzkauth and zkauth and replace master with node3 and set broker.id =3
cp ./kconfs/server.properties.xzkauth ./kconfs/server.properties.node3.xzkauth
sed -e s/broker.id=0/broker.id=3/g -e s/master.e4rlearning/node3.e4rlearning/g -e s/kafka.master/kafka.node3/g kconfs/server.properties.xzkauth | sed -e  s/zookeeper.connect=node3.e4rlearning/zookeeper.connect=master.e4rlearning/g > kconfs/server.properties.node3.xzkauth

sed -e s/broker.id=0/broker.id=1/g -e s/master.e4rlearning/node1.e4rlearning/g -e s/kafka.master/kafka.node1/g kconfs/server.properties.zkauth | sed -e  s/zookeeper.connect=node1.e4rlearning/zookeeper.connect=master.e4rlearning/g > kconfs/server.properties.node1.zkauth

sed -e s/kafka_server_master/kafka_server_node3/g -e  s/^Requires.*/''/g kconfs/kafka.service.allwk > kconfs/kafka.service.node3

sed  -e s#kafka/master#kafka/node3#g -e s#kafka.master#kafka.node3#g kconfs/kafka_server_master_jaas.conf  >kconfs/kafka_server_node3_jaas.conf

# # set up stuff for admin machine also
# sed -e s/broker.id=0/broker.id=2/g -e s/master.e4rlearning/admin.e4rlearning/g -e s/kafka.master/kafka.admin/g server.properties.xzkauth | sed -e  s/zookeeper.connect=admin.e4rlearning/zookeeper.connect=master.e4rlearning/g > server.properties.admin.xzkauth

# sed -e s/broker.id=0/broker.id=2/g -e s/master.e4rlearning/admin.e4rlearning/g -e s/kafka.master/kafka.admin/g server.properties.master.zkauth | sed -e  s/zookeeper.connect=admin.e4rlearning/zookeeper.connect=master.e4rlearning/g > server.properties.admin.zkauth

# sed  -e s#kafka/master#kafka/node$x#g -e s#kafka.master#kafka.admin#g kafka_server_master_jaas.conf  >kafka_server_admin_jaas.conf
