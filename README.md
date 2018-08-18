(C)Tsubasa Kato 2018

How to use:

Put URLs (one URL per line) in "alllinks.txt" .

run url-2-word.pl by entering: 
$perl url-2-word.pl

This will extract words from URL and save it in "lastword-url.txt" . 
In this version, the extracted words will be made from the last "/" (slash) onwards.

You can then build a script that uses words extracted to build a URL seed file.

For example: http://www.superai.online/solr/search.php?query=EXTRACTED_WORD_HERE
This will be able to make the crawler get focused and related links easily.

Dependencies:
None. You just need Perl.

License: MIT License
