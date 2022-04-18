PORT=8186
file=test
endpoint="http://localhost:$PORT/write"
cat data | while read line; do
  ts="$(echo $line | cut -d' ' -f1)000000000"
  value=$(echo $line | cut -d' ' -f2)
  curl -i -XPOST $endpoint --data-binary "temp value=${value} ${ts}"
  echo "$endpoint temp value=${value} ${ts}"
done<$file