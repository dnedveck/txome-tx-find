# if you don't have blast, have bioconda (https://bioconda.github.io/)
# then `conda install blast`

cd gencode-refs

cat gencode_txome.fa | makeblastdb -title gencode_db -dbtype nucl -out gencode_db -parse_seqids


cd ..
