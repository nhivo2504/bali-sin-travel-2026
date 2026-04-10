#!/bin/bash

# Configuration
PROJECT_FILE="bali-sin-travelplan.html"
DOMAIN="bali-sin-travel-2026.surge.sh"

echo "🚀 Starting deployment of $PROJECT_FILE..."

# 1. Sync index.html
cp "$PROJECT_FILE" index.html
echo "✅ Prepared index.html"

# 2. Push to GitHub
git add .
git commit -m "Update itinerary: $(date)"
git push
echo "✅ Pushed to GitHub (Pages update starting...)"

# 3. Deploy to Surge
# Using local path for surge if needed
export PATH=$PATH:/usr/local/bin
npx -y surge . --domain "$DOMAIN"
echo "✅ Deployed to Surge"

echo "🎉 All done! Your changes are live."
echo "Surge: https://$DOMAIN"
echo "GitHub: https://nhivo2504.github.io/bali-sin-travel-2026/"
