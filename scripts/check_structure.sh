#!/bin/bash
set -e

required_dirs=(
  "data"
  "queries"
  "evidencias"
)

for dir in "${required_dirs[@]}"; do
  [ -d "$dir" ] || { echo "Falta $dir"; exit 1; }
done

required_files=(
  "README.md"

  "queries/01_creacion_restricciones.cypher"
  "queries/02_importacion_datos.cypher"
  "queries/03_consultas_basicas.cypher"
  "queries/04_operaciones_crud.cypher"
  "queries/05_consultas_relaciones.cypher"
)

for file in "${required_files[@]}"; do
  [ -f "$file" ] || { echo "Falta $file"; exit 1; }
done

echo "Estructura correcta"