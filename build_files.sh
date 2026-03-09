#!/bin/bash
# Build script for Vercel deployment
# This runs Django migrations and collects static files

echo "=== FitSync Vercel Build ==="

# Install dependencies
pip install -r requirements.txt

# Run database migrations
echo "--- Running migrations ---"
python manage.py migrate --noinput

# Collect static files
echo "--- Collecting static files ---"
python manage.py collectstatic --noinput

echo "=== Build complete ==="
