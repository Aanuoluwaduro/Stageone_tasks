#!/usr/bin/bash

#this is stage zero task one 

#make two directories  and change into the second directory
mkdir Aanuoluwa
 mkdir biocomputing
 cd biocomputing

#download three files, delete the one that is a duplictate and move the fna file to the name directory
 wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
 wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
 mv wildtype.fna ~/Aanuoluwa/
 rm wildtype.gbk.1

#check for a 'tatatata pattern in the fna file to see if it is a mutant file
 cd ..
 cd Aanuoluwa
 ls
 grep "tatatata" wildtype.fna
 grep -h "tatatata" wildtype.fna > mutantfile.fna

#clear terminal and get a list of all commands used
#codes are commented out below for sanity
# clear
# cd ..
# history
