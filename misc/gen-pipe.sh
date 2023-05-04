#Generate pipelines
for i in {1..1000}
do
  appName="loadapp$i"

  for j in {1..4}
  do
    pipeName="pipe$j"
    fileName="$appName-$pipeName"
    jqStr=".application = \"$appName\"|.name = \"$pipeName\""
    cat base-pipe.json | jq "$jqStr" > ../pipelines/$fileName.json
  done  
done  




