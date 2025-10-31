#!/bin/bash
# Extraer navegación del ODS 1
sed -n '/<!-- Barra de Navegación ODS Interactiva -->/,/^  <\/nav>/p' ods1_informe.html > nav_temp.html

# Agregar a cada ODS
for i in {2..17}; do
  sed -i '' "/<body>/r nav_temp.html" ods${i}_informe.html
  echo "✓ ODS $i"
done

rm nav_temp.html
echo "✓ Completado"
