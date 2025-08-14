To download the data:

wget https://sra-downloadb.be-md.ncbi.nlm.nih.gov/sos8/sra-pub-zq-818/SRR028/28555/SRR28555713/SRR28555713.lite.1 # SRX22737852: A375 WT sub biol rep1

wget https://sra-downloadb.be-md.ncbi.nlm.nih.gov/sos8/sra-pub-zq-818/SRR028/28555/SRR28555712/SRR28555712.lite.1 # SRX22737853: A375 WT sub biol rep2

wget https://sra-downloadb.be-md.ncbi.nlm.nih.gov/sos8/sra-pub-zq-818/SRR028/28555/SRR28555699/SRR28555699.lite.1 # SRX22737858: SHSY5Y WT sub biol rep1

wget https://sra-downloadb.be-md.ncbi.nlm.nih.gov/sos8/sra-pub-zq-818/SRR028/28555/SRR28555697/SRR28555697.lite.1 # SRX22737859: SHSY5Y WT sub biol rep2

wget https://sra-downloadb.be-md.ncbi.nlm.nih.gov/sos8/sra-pub-zq-818/SRR028/28555/SRR28555684/SRR28555684.lite.1 # SRX22737864: HEK293WT sub biol rep1

wget https://sra-downloadb.be-md.ncbi.nlm.nih.gov/sos8/sra-pub-zq-818/SRR028/28555/SRR28555683/SRR28555683.lite.1 # SRX22737865: HEK293WT sub biol rep2

fastq-dump --split-files *lite.1 # convert to fastq
