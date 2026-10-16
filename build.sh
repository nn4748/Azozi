#!/bin/sh
# Wraps index.html (the game body) in a full HTML document for Netlify.
set -e
mkdir -p dist
{
  printf '%s\n' '<!doctype html>' '<html lang="ar" dir="rtl">' '<head>' \
    '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">' \
    '<meta name="theme-color" content="#2a2e35">' \
    '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>' \
    '</head>' '<body>'
  cat index.html
  printf '%s\n' '</body>' '</html>'
} > dist/index.html
