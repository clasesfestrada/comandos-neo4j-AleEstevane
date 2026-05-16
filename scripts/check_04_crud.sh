#!/bin/bash
set -e

file="queries/04_operaciones_crud.cypher"

grep -iq "CREATE" "$file"
grep -iq "MATCH" "$file"
grep -iq "SET" "$file"
grep -iq "DELETE" "$file"

echo "CRUD correcto"