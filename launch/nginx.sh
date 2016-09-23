docker run --link openam  --link pymicroservice-inst1 \
  --add-host="openam.fcloud.io:127.0.0.1" \
  --add-host="www.fcloud.io:127.0.0.1" \
  --name nginxmodam -p 80:8080  -d nginxmodam 

