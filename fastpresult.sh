#!/bin/bash

mkdir fastp_reads  
SAMPLES=(
  "ACBarrie"
  "Baxter"
  "Chara"
)
for SAMPLE in "${SAMPLES[@]}"; do

fastp \
    -i "$PWD/${SAMPLE}_R1.fastq.gz" \
    -I "$PWD/${SAMPLE}_R2.fastq.gz" \
    -o "fastp_reads/${SAMPLE}_R1.fastq.gz" \
    -O "fastp_reads/${SAMPLE}_R2.fastq.gz" \
    --html "fastp_reads/${SAMPLE}_fastp.html" 
done

