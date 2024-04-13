#!/usr/bin/python
# -*- coding: utf-8; mode: python -*-
from pyspark import SparkConf, SparkContext

conf = SparkConf().setAppName("Books-Madrid")
sc = SparkContext(conf=conf)

rddInput = sc.textFile("/prehisMarzo2019.txt")
rdd1 = rddInput.map(lambda line: line.split("\t"))
rdd2 = rdd1.map(lambda line: (line[0], line[9]))
rdd3 = rdd2.filter(lambda title: ("Madrid" in title[1])).sortByKey()
rdd3.groupByValue()
