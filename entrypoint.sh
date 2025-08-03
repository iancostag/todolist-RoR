#!/bin/bash
set -e

echo "Removendo o arquivo de PID antigo, se existir..."
rm -f /app/tmp/pids/server.pid

# Espera o banco estar pronto, se a URL existir
if [ -n "$DATABASE_URL" ]; then
  echo "Aguardando o banco de dados iniciar..."
  until pg_isready -d "$DATABASE_URL"; do
    sleep 1
  done
fi

exec "$@"
