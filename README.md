**Stage zero tasks**

#grep - global regular expression print
I used the grep command to search through files to find patterns of characters of interest. The grep command accepts options and the pattern of interest. I added the ‘-h’ option to print the lines that contained the pattern of interest, and ‘>’ was added to print the output in the new file. 

#figlet - Frank, Ian & Glenn's Letters
Figlet is a command-line utility for creating large colorful characters from ordinary text. I used the figlet command to produce a colorful representation of my name. 

#gunzip - GNU unzip
It is a command that is used to expand a compressed file. Files with either of the following extensions .gz, .z, _z, -gz, -z , .Z, .taz or .tgz can work with gunzip and automatically replace the compressed with the original file. I used it to convert my unix_intro_data.tar.gz file to my .tar file, its original format. 


#tar - Tape archive(r)
Together with the numerous options available, tar is used to create, extract, or list files from a .tar file format. Using the ‘xvf’ option, I used tar to extract the genome files from the downloaded file. 



**Stage one task**

#grep -c "^>" DNA.fa
Since grep is used to find a particular pattern in files and the ‘>’ sign is the first character in the header of sequences, I used grep to find the ‘>’ to find this sign, and the ‘^’ sign was added to address lines with multiple ‘>’. 

#fastqc, fastp, multiqc
fastqc: It performs quality control checks on raw sequence data coming from high throughput sequencing pipelines such as next-generation sequencing.
fastp: it is used to trim adapters and poor-quality reads from these raw sequence data.
multiqc: it is used to analyse the results of these previous quality control checks and summarise them into a single HTML report.
