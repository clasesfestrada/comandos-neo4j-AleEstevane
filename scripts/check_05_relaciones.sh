#!/bin/bash
set -e

file="queries/05_consultas_relaciones.cypher"

grep -iq "AMIGO_DE" "$file"
grep -iq "INSCRITO_EN" "$file"
grep -iq "MATCH" "$file"
grep -iq "RETURN" "$file"

echo "Consultas de relaciones correctas"