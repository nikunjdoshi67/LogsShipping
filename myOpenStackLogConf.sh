#to confiugre logging in Openstack enviroment

#https://support.loomsystems.com/en/articles/930646-where-to-find-openstack-log-files

#In this script I am declaring an array and inide that I am passing the /etc log files as each element of the array from where we have to collect the logs


#!/bin/bash


declare -a my_array

my_array=(/etc/nova/nova.conf
/etc/keystone/keystone.conf
/etc/glance/glance-api.conf
/etc/glance/glance-registry.conf
/etc/cinder/cinder.conf)

#Inside the for loop when we will mention the 3 steps it will enable us to configure the logs


for i in "${my_array[@]}";

do
        debug = False
        use_syslog = True
        syslog_log_facility = LOG_LOCAL0
        echo "$i";

done
~                                                                                                                                                                                             
~                 
