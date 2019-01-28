mkdir -p blast-results

blastn -db gencode-refs/gencode_db -query query-sequence.fa -out blast-results/results.txt

hits=`cat blast-results/results.txt`

for hit in $hits
do
	awk 'BEGIN{ ORS = ""; RS = ">"; FS="\n" } $1 == $hit \
		{ print ">" $0 }' gencode-refs/gencode_txome.fa	\
			>> blast-results/results.fa
done

