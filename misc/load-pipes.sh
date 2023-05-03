#Generate pipelines
for i in {1..100}
do
  appName="loadapp$i"

  for j in {1..4}
  do
    pipeName="pipe$j"
    fileName="$appName-$pipeName"
    echo "app $i , pipe $j"
    echo spin application save -f ../pipelines/$fileName.json --config config
  done  
done  




