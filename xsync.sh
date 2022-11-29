#!/bin/bash

#1 check the len(parameters) must larger than 1
if [ $# -lt 1 ]
then
    echo Not Enough Arguement!
    exit;
fi

#2.iterate over all machines include itself
for host in hadoop102 hadoop103 hadoop104 ##!!!!change names to your machines here
do
    echo ====================  $host  ====================
    
    #3.遍历所有目录，挨个发送

    for file in $@ #for each file in requested directory
    do
        #4.if the file exist at the parant
        if [ -e $file ]
            then
                #5.get parent directory
                pdir=$(cd -P $(dirname $file); pwd)

                #6.get the file name
                fname=$(basename $file)
                ssh $host "mkdir -p $pdir"
                rsync -av $pdir/$fname $host:$pdir 
            else
                echo $file does not exists!
        fi
    done
done
