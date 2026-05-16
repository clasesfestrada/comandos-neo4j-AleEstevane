#!/bin/bash
set -e

file="queries/02_importacion_datos.cypher"

grep -iq "LOAD CSV" "$file"
grep -iq "raw.githubusercontent.com" "$file"
grep -iq "INSCRITO_EN" "$file"
grep -iq "AMIGO_DE" "$file"
grep -iq "IMPARTE" "$file"

echo "Importación correcta"