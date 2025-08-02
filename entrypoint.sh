#!/bin/bash
set -e

echo "Aguardando o banco de dados iniciar..."
until pg_isready -h db -p 5432 -U postgres; do
  sleep 1
done

rm -f /app/tmp/pids/server.pid

bundle exec rails db:create db:migrate db:seed || true

exec bundle exec rails server -b 0.0.0.0 -p 3000
