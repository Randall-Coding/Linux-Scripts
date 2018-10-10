BEGIN {
        FS= "<body"
        while (getline) {
          if ($0 ~ /<body/) {
            print "\n\n" FS " " $2
            break
          }
        }
      }
{
 FS ="<\/body>"
 while (getline) {
   if ($0 ~ /<\/body/) {print $1 FS; break}
   else {print}
 }
}
