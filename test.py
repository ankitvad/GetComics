#Ankit_Vadehra
#part of GetComics.sh
import urllib
import sys
count=sys.argv[1]
url=sys.argv[2]
#i=1
#url="http://www.phdcomics.com/comics/archive/phd010715s2.gif"
#directory= "/home/ankitvad/documents/PHDComics/"
urllib.urlretrieve(url,"%s.gif"%count)
