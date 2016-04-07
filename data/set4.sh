#! /usr/bin/env bash

#bowtie2-build hg19.chr1.fa hg19.chr1

#bowtie2 -x hg19.chr1 -U factorx.chr1.fq\
#    | samtools sort -o factorx.sort.bam 

#bedtools genomecov -ibam factorx.sort.bam -g hg19.chrom.sizes -bg > factorx.bg

#bedGraphToBigWig factorx.bg hg19.chrom.sizes factorx.bw

#trach for UCSC genome
# track type=bigWig bigDataUrl="http://gabrielasamayoa.github.io/problem-set-4/data/factorx.bw"
# color=255,0,0 visibility=full name="chip data" description="chip description"

#macs2 callpeak -t factorx.sort.bam -f BAM -n factorxpeakcall

#bedtools slop -i factorxpeakcall_summits.bed -g hg19.chrom.sizes -b 50 > summits_slop.bed

#shuf summits_slop.bed | head -n 1000 > peak.rand.1000.bed 

#bedtools getfasta -fi hg19.chr1.fa -bed peak.rand.1000.bed -fo peakfactorx.fa

#meme peakfactorx.fa -nmotifs 1 -maxw 20 -minw 8 -maxsize 1000000  -dna 

meme-get-motif -id  1 < meme.txt  > out

