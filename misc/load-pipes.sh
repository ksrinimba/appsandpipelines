#Generate pipelines
#for i in {566..1000}
#do
  appName="srinitest1"

  for j in {1..100}
  do
    pipeName="pipe$j"
    fileName="$appName-$pipeName"
    echo "app $i , pipe $j"
    spin -k pi save -f ../pipelines/$fileName.json  --config config &
  done  
echo sleeping...
sleep 3600
#done  




