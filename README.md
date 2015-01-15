# GetComics
Uses Shell+w3m tool to sequentially dump HTML code to a file and then extract the desired URL of the image, sending it to a small Python script along with the current so as to use Urllib+Python to
download the file, give it the desired count and then save it in the directory.
<br><br>
Could be used with BeautifulSoup+Python but i wanted to give shell a chance. As of 15th Jan 2015, PHDComics webhost has banned 'libcurl/curl' 'wget' 'lynx' and other tools to work on their server.
Hence, <b>w3mM/b> terminal browser was the only thing that didn't give a 403-error and hence could dump the soure in the desired text file. From there, it's just regular expression to parse the URL of the image.

PS: This is just for educational purposes, as i wanted to pass all of the comics to my Kindle(..for offline viewing) this should not be used for bulk-downloading.
<img height=256 width=455 src="test.png"> 
<br>License: Standard BSD License.
