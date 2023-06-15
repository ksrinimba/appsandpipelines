#do
  appName="srinitest1"

  for j in {1..10}
  do
    pipeName="pipe$j"
    fileName="$appName-$pipeName"
    n=$(($j % 10))    
    groupName="group$n"
    echo "Running app $i , pipe $j"
    curl -vvv -ks -m 10 -X POST https://af568f2a3ac034efc8fea2b6ca9f7c66-bf3c6b9b52fd3b94.elb.us-west-2.amazonaws.com/webhooks/webhook/$groupName --cert ./dev-client.crt --key ./dev-client.key -H "content-type:application/json"
  done  
