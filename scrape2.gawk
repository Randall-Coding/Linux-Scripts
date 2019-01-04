BEGIN {
	print "Head section"
      }
/<head>/,/<\/head>/ {
   	print $0
}
