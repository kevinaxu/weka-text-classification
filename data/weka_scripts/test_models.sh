#!/bin/bash

# Train and test sevearl classifiers on the LangID problem

java -cp /Users/Kevin/Dev/weka-3-6-11/weka.jar weka.classifiers.bayes.NaiveBayes -no-cv -i -t training.vector.ig0.arff -T testing.vector.ig0.arff > NB.txt

java -cp /Users/Kevin/Dev/weka-3-6-11/weka.jar weka.classifiers.rules.PART -no-cv -i -t training.vector.ig0.arff -T testing.vector.ig0.arff > PART.txt

java -cp /Users/Kevin/Dev/weka-3-6-11/weka.jar weka.classifiers.trees.J48 -no-cv -i -t training.vector.ig0.arff -T testing.vector.ig0.arff > J48.txt

java -cp /Users/Kevin/Dev/weka-3-6-11/weka.jar weka.classifiers.lazy.IBk -K 1 -no-cv -i -t training.vector.ig0.arff -T testing.vector.ig0.arff > IB1.txt

java -cp /Users/Kevin/Dev/weka-3-6-11/weka.jar weka.classifiers.lazy.IBk -K 3 -no-cv -i -t training.vector.ig0.arff -T testing.vector.ig0.arff > IB3.txt

java -cp /Users/Kevin/Dev/weka-3-6-11/weka.jar weka.classifiers.lazy.IBk -K 5 -no-cv -i -t training.vector.ig0.arff -T testing.vector.ig0.arff > IB5.txt

java -cp /Users/Kevin/Dev/weka-3-6-11/weka.jar weka.classifiers.functions.SMO -no-cv -i -t training.vector.ig0.arff -T testing.vector.ig0.arff > SMO.txt