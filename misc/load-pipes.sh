#Generate pipelines
for i in {1..100}
do
  appName="loadapp$i"

  for j in {1..4}
  do
    pipeName="pipe$j"
    fileName="$appName-$pipeName"

    echo spin application save -f $fileName --config config
  done  
done  




