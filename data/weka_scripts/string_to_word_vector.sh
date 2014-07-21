java -cp /Users/Kevin/Dev/weka-3-6-11/weka.jar \
weka.filters.unsupervised.attribute.StringToWordVector -O -L \
-tokenizer "weka.core.tokenizers.WordTokenizer \
-delimiters \" \\r\\n\\t.,;:\\\'\\\"()?!\""	\
-W 10000000 -b -i training.arff -o training.vector.arff -r testing.arff -s testing.vector.arff