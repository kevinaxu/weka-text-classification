java -cp /Users/Kevin/Dev/weka-3-6-11/weka.jar \
weka.filters.supervised.attribute.AttributeSelection -c 1 -E \
weka.attributeSelection.InfoGainAttributeEval -S \
"weka.attributeSelection.Ranker -T 0.0" -b -i training.vector.arff -o training.vector.ig0.arff -r testing.vector.arff -s testing.vector.ig0.arff