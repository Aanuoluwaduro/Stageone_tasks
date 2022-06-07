#!/usr/bin/bash
#here is the begining of stage one

wget https://raw.githubusercontent.com/HackBio-Internship/wale-home-tasks/main/DNA.fa
ls
grep -c "^>" DNA.fa
grep -v "^>" DNA.fa | wc -c

#setting up a conda environment 

wget https://repo.anaconda.com/archive/Anaconda3-2018.12-Linux-x86_64.sh
bash Anaconda3–2018.12-Linux-x86_64.sh
ls
rm Anaconda3–2018.12-Linux-x86_64.sh
ls
source .bashrc
which python
which conda

#installing fastqc, fastp and multiqc
conda install -c bioconda fastp
sudo apt-get install fastqc
sudo apt-get install multiqc 

#downloading datasets from github repo
wget https://github.com/josoga2/yt-dataset/blob/main/dataset/raw_reads/ACBarrie_R1.fastq.gz?raw=true -O ACBarrie_R1.fastq.gz
wget https://github.com/josoga2/yt-dataset/blob/main/dataset/raw_reads/ACBarrie_R2.fastq.gz?raw=true -O ACBarrie_R2.fastq.gz
wget https://github.com/josoga2/yt-dataset/blob/main/dataset/raw_reads/Baxter_R1.fastq.gz?raw=true -O Baxter_R1.fastq.gz
wget https://github.com/josoga2/yt-dataset/blob/main/dataset/raw_reads/Baxter_R2.fastq.gz?raw=true -O Baxter_R2.fastq.gz
wget https://github.com/josoga2/yt-dataset/blob/main/dataset/raw_reads/Chara_R1.fastq.gz?raw=true -O Chara_R1.fastq.gz
wget https://github.com/josoga2/yt-dataset/blob/main/dataset/raw_reads/Chara_R2.fastq.gz?raw=true -O Chara_R2.fastq.gz

ls
mkdir output

#running fastqc on all files 

fastqc ACBarrie_R1.fastq.gz -O fastqc_report/
fastqc ACBarrie_R2.fastq.gz -O fastqc_report/
fastqc Baxter_R1.fastq.gz -O fastqc_report/
fastqc Baxter_R2.fastq.gz -O fastqc_report/
fastqc Chara_R1.fastq.gz -O fastqc_report/
fastqc Chara_R2.fastq.gz -O fastqc_report/
cd fastqc_report
ls

#going  to work on fastp

cd ..
touch fastpresult.sh
chmod u=rwx
nano fastpresult.sh
bash fastpresult.sh
ls

#moving my fastp and fastqc to output folder

mv fastp_reads output
mv fastqc_report output
cd output
ls

#running multiqc

multiqc fastqc_report/
ls  
