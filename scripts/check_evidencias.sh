#!/bin/bash
set -e

count=$(find evidencias -type f | wc -l)

if [ "$count" -lt 3 ]; then
  echo "Se requieren al menos 3 evidencias"
  exit 1
fi

echo "Evidencias correctas"