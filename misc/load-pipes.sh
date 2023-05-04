#Generate pipelines
for i in {566..1000}
do
  appName="loadapp$i"

  for j in {1..2}
  do
    pipeName="pipe$j"
    fileName="$appName-$pipeName"
    echo "app $i , pipe $j"
    spin pi save -f ../pipelines/$fileName.json --config config
  done  
done  




