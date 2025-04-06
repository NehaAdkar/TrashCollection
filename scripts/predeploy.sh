#!/bin/bash

# Exit on error
set -e

echo "🚀 Starting pre-deploy checks..."

# 1. Verify Node.js and npm versions
echo "🔍 Checking Node.js and npm versions..."
node -v
npm -v

# 2. Install dependencies
echo "📦 Installing dependencies..."
npm ci

# 3. Run tests
echo "🧪 Running tests..."
npm test

# 4. Lint code
echo "🧹 Linting code..."
npm run lint

# 5. Build project
echo "🏗 Building project..."
npm run build

# 6. Verify Firebase tools
echo "🔥 Checking Firebase CLI..."
firebase --version

echo "✅ All pre-deploy checks passed!"
