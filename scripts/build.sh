#!/usr/bin/env bash

set -e

echo "Building frontend"

cd bloglist-frontend
npm install
npm run build

echo "Installing backend dependencies"

cd ../bloglist-backend
npm install

echo "Copying frontend build to backend"

rm -rf dist
cp -r ../bloglist-frontend/dist ./dist

echo "Build completed!"