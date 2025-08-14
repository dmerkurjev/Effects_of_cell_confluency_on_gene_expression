#!/bin/bash

# RNA-seq mini-pipeline: QC → alignment → counting

# -------------------- Setup --------------------


# Define project structure relative to current location
PROJECT_DIR="./data_pre_processing"
mkdir -p "${PROJECT_DIR}"/{raw,fastq,aligned,counts,logs,qc,STAR_index}


cd "${PROJECT_DIR}/raw"


# Group SRA run IDs by biological sample 
A375rep1=(SRX22737852)   # SRX22737852
A375rep2=(SRX22737853)   # SRX22737853
SHSY5Yrep1=(SRX22737858)    # SRX22737858
SHSY5Yrep2=(SRX22737859)    # SRX22737859
HEK293WTrep1=(SRX22737864)   # SRX22737864
HEK293WTrep2=(SRX22737865)   # SRX22974865

# -------------------- Download & Convert --------------------

# Download .sra files
for r in "${A375rep1[@]}" "${A375rep2[@]}" "${SHSY5Yrep1[@]}" "${SHSY5Yrep2[@]}" "${HEK293WTrep1[@]}" "${HEK293WTrep2[@]}"; do
  prefetch "$r"
done

# Convert to gzipped FASTQ

for r in "${A375rep1[@]}" "${A375rep2[@]}" "${SHSY5Yrep1[@]}" "${SHSY5Yrep2[@]}" "${HEK293WTrep1[@]}" "${HEK293WTrep2[@]}"; do

  fasterq-dump -e 16 -p -O . "$r"
