mkdir -p blast-results

blastn -db gencode-refs/gencode_db -query query-sequence.fa -out blast-results/results.txt

hits=`cat blast-results/results.txt | grep '>' | uniq | cut -f 1 -d'|' | sed -e 's/>//g'`


for hit in $hits
do
	awk 'BEGIN{RS=">";FS="\n"}NR>1{if ($1~/${hit}/) print ">"$0}' gencode-refs/gencode_txome.fa 
	#>> blast-results/results.fa
done

