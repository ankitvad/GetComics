#!bin/bash
#A script to download comics from PHDComics[phdcomics.com]
#in a sequential order.
#requires: w3m, Python.
#By: Ankit Vadehra 
#Contact: ankitvad[at]gmail[dot]com
#v 1.0
#Date: 15th January 2015 (only 1776 comics available till date.)

for i in {1..1776}
do
	w3m -dump_source "http://phdcomics.com/comics/archive.php?comicid="$i>test.txt
	file_line=$(grep "<td bgcolor=#FFFFFF align=center><img id=comic name=comic src=http://www.phdcomics.com/comics/archive/" test.txt)
	x="${file_line#*src=}"
	x="${x%% *}"
	#echo -n $file_line
	#echo -n $x
	python test.py $i $x
	echo -e "Recieved Image: "$i
	echo -e " "
done



