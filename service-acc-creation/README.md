FRONT50=http://spin-front50:8080

date -Ins; curl -X POST \
  -H "Content-type: application/json" \
  -d '{ "name": "sekret-service-accountCC@spinnaker-test.net", "memberOf": ["myApp-prodD","myApp-qaC"] }' \
  $FRONT50/serviceAccounts ; date -Ins


for ((n=1;n<7500;n++))
do
echo $n
curl -X POST \
  -H "Content-type: application/json" \
  -d \{\"name\":\"srini-service-account$n\@spinnaker-test.net\",\"memberOf\":\[\"myApp-prod$n\",\"myApp-qa\"\]\} \
  $FRONT50/serviceAccounts
done

