for i in 1 .. 3
do
   cp pipeline-jsonfile/sampleapp.json  app$i
   spin application save -f app$i --config config
done
