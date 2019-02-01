mkdir -p blast-results

blastn -db gencode-refs/gencode_db -query query-sequence.fa -out blast-results/results.txt

hits=`cat blast-results/results.txt | grep '>' | uniq | sed -e 's/>//g'`


for hit in $hits
do
	awk -v seq=$hit -v RS='>' '$1 == seq {print RS $0}' \
	gencode-refs/gencode_txome.fa >> blast-results/results.fa
done

# creating another version of the BLAST results with names that
# would be more friendly

cat blast-results/results.fa | cut -f 5 -d'|' | sed -e 's/R/>R/g' >> blast-results/named-results.fa
