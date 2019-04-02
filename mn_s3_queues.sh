#!/bin/bash

# requires sudo
# q2 highest priority
# q0 lowest priority
ovs-vsctl set port s3-eth2 qos=@newqos -- --id=@newqos create qos type=linux-htb queues:0=@q0 queues:1=@q1 queues:2=@q2 -- --id=@q0 create queue other-config:max-rate=10000000000 -- --id=@q1 create queue other-config:max-rate=10000000000 -- --id=@q2 create queue other-config:max-rate=10000000000