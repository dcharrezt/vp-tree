for f in *.tiff; do
  convert ./"$f" ./"${f%}.jpg"
done
