#!/bin/bash

# RNA-seq mini-pipeline: QC → alignment → counting

# -------------------- Setup --------------------


# Define project structure relative to current location
PROJECT_DIR="./data_pre_processing"
mkdir -p "${PROJECT_DIR}"/{raw,fastq,aligned,counts,logs,qc,STAR_index}


cd "${PROJECT_DIR}/raw"


# Group SRA run IDs by biological sample 
T0hrrep1=(SRX22974823)   # SRX22974823
T0hrrep2=(SRX22974824)   # SRX22974824
T0hrCAFrep1=(SRX22974825)    # SRX22974825
T0hrCAFrep2=(SRX22974826)    # SRX22974826
T6hrrep1=(SRX22974827)   # SRX22974827
T6hrrep2=(SRX22974828)   # SRX22974828
T6hrCAFrep1=(SRX22974829)   # SRX22974829
T6hrCAFrep2=(SRX22974820)   # SRX22974830

# -------------------- Download & Convert --------------------

# Download .sra files
for r in "${T0hrrep1[@]}" "${T0hrrep2[@]}" "${T0hrCAFrep1[@]}" "${T0hrCAFrep1[@]}" "${T6hrrep1[@]}" "${T6hrrep2[@]}" "${T6hrCAFrep1[@]}" "${T6hrCAFrep1[@]}"; do
  prefetch "$r"
done

# Convert to gzipped FASTQ

for r in "${T0hrrep1[@]}" "${T0hrrep2[@]}" "${T0hrCAFrep1[@]}" "${T0hrCAFrep2[@]}" "${T6hrrep1[@]}" "${T6hrrep2[@]}" "${T6hrCAFrep1[@]}" "${T6hrCAFrep1[@]}"; do
  fasterq-dump -e 16 -p -O . "$r"
