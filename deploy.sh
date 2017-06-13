
ssh root@garu.pizza <<'ENDSSH'
  cd /mnt/data/docker/nginx/;
  git reset --hard HEAD;
  git pull;
ENDSSH
