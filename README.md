MCF7 RNA-Seq Analysis — Preprocessing & Analysis

This repository contains an end-to-end workflow for RNA-seq analysis in order to study the impact of cell confluency on gene expression. The focus was on Argonaute (AGO) protein dynamics and associated gene and protein expression in HEK293, A375, and SHSY5Y cell lines.

It includes two main components:

Preprocessing (Clean.sh) Downloads SRA runs, builds 8 sample FASTQs, performs QC, alignment, and outputs gene transcription level.

Analysis (Differential_expression.sh) Performs differential expression analysis using edgeR.

Data

SRA BioProject: PRJNA1048451 Gene expression profiling of subconfluent and confluent A375, SHSY5Y and HEK293 cells via RNA sequencing in 3 biological replicates, and carried out differential expression analysis between subconfluent and confluent cells of respective cell line.

Sample 1: GSM7933149 (SRX22737852): A375 WT sub biol rep1

Sample 2: GSM7933150 (SRX22737853): A375 WT sub biol rep2

Sample 3: GSM7933156 (SRX22737858): SHSY5Y WT sub biol rep1

Sample 4: GSM7933157 (SRX22737859): SHSY5Y WT sub biol rep2

Sample 5: GSM7933161 (SRX22737864): HEK293WT sub biol rep1

Sample 6: GSM7933162 (SRX22737865): HEK293WT sub biol rep1

Reference files:

Transcript annotation: gencode.v29.annotation.gtf Alignment index: hg38 Related publication: PMID: 38388711

Directory Output

The preprocessing script creates a structured working directory data_pre_processing/ containing:

raw/ # downloaded and processed SRA FASTQs
fastq/ # concatenated FASTQs (one per sample)
aligned/ # STAR-aligned BAMs
counts/ # gene-level count matrix
