#!/usr/bin/env bash
set -x
set -euo pipefail

VERSION=$1

sed -i -e "s,\(VERSION=\).*,\1\"$VERSION\"," scripts/startup.sh

echo "Creating assets ..."
mkdir -p dist
zip -9 "dist/scripts-${VERSION}.zip" scripts/*
tar czf "dist/scripts-${VERSION}.tar.gz" scripts/*
