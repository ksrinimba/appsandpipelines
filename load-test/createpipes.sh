set -x
spin -k pi save -f pipeline-1.json --config ~/.spin/devconfig &
spin -k pi save -f pipeline-2.json --config ~/.spin/devconfig &
spin -k pi save -f pipeline-3.json --config ~/.spin/devconfig &
spin -k pi save -f pipeline-4.json --config ~/.spin/devconfig &
spin -k pi save -f pipeline-5.json --config ~/.spin/devconfig &
sleep 3600
