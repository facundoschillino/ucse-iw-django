# exit on error
set -o errexit

# asegurar que uv esté en PATH (por si el entorno de ejecución no lo heredó del build)
export PATH="$HOME/.local/bin:$PATH"

# correr gunicorn apuntando a TU wsgi (paquete del proyecto = main)
uv run gunicorn pruebas_noticias.wsgi:application --bind 0.0.0.0:${PORT:-8000}
