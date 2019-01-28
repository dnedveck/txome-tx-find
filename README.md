This short little project is practice for getting putative transcripts out of a de novo transcriptome. 

I'm going to be using the gencode v29 transcript + ncrna sequences to build a blast DB, create a query string from some exons of a gene, and then see what kind of transcripts I get from blasting it. 

To get a query sequence, I went to ensembl and got the first two exons from RNASEH2B [link](http://useast.ensembl.org/Homo_sapiens/Transcript/Exons?db=core;g=ENSG00000136104;r=13:50909747-50973745;t=ENST00000422660), and pasted them together. The sequence is in `query-sequence.fa`

