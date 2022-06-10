#!/usr/bin/bash

#install figlet to call  it
sudo apt install figlet
figlet Aanuoluwa

#make a directory and change into it to download the file to be used 
mkdir compare
cd compare
wget https://www.bioinformatics.babraham.ac.uk/training/Introduction%20to%20Unix/unix_intro_data.tar.gz

#unzip and untar the file, open the mito.dat file and change the mito in the header to mitochondrion 
gunzip unix_intro_data.tar.gz
ls
tar xvf unix_intro_data.tar
cat seqmonk_genomes/Saccharomyces\ cerevisiae/EF4/Mito.dat
cp seqmonk_genomes/Saccharomyces\ cerevisiae/EF4/Mito.dat ~/compare/
ls
nano Mito.dat

#rename the mito.dat file to mitochondrion.txt, change into the FastQ_Data directory
mv Mito.dat Mitochondrion.txt
ls
cd FastQ_Data
ls
#Calculate the total number of lines in lane 8 then print the total number of lines in all fastq.gz then save it into a new file
wc -l lane8_DD_P4_TTAGGC_L008_R1.fastq.gz
wc -l *.gz
wc -l *.gz > linecount.txt

