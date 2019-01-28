mkdir -p gencode-refs

cd gencode-refs

curl -O ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_29/gencode.v29.transcripts.fa.gz

curl -O ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_29/gencode.v29.lncRNA_transcripts.fa.gz

cat gencode.v29.transcripts.fa.gz gencode.v29.lncRNA_transcripts.fa.gz > gencode_txome.fa.gz

gunzip gencode_txome.fa.gz

cd ..
