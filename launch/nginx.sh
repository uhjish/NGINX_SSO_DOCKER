docker run --link openam  --link pymicroservice-inst1 \
  --add-host="openam.fcloud.io:13.94.159.205" \
  --add-host="www.fcloud.io:13.94.159.205" \
  --name nginxmodam -p 80:8080  -d nginxmodam 

