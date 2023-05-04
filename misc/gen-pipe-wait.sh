#Generate pipelines
for i in {1001..1010}
do
  appName="loadapp$i"

  for j in {1..2}
  do
    pipeName="pipe$j"
    fileName="$appName-$pipeName"
    jqStr=".application = \"$appName\"|.name = \"$pipeName\""
    cat base-pipe-wait-cron.json | jq "$jqStr" > ../pipelines/$fileName.json
  done
done
