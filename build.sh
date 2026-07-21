#!/bin/sh
# Compile the statutes, stamping each PDF with the source revision.
# A dirty working tree is marked so a PDF can never claim to be a clean commit.
set -eu

cd "$(dirname "$0")"

rev=$(git rev-parse --short=8 HEAD)
[ -z "$(git status --porcelain)" ] || rev="$rev-dirty"

# The brand fonts are macOS-only; elsewhere use the libre stand-ins. Typst has
# no way to detect this itself, so decide here and pass it in.
case "$(uname -s)" in
  Darwin) fonts=brand ;;
  *)      fonts=libre ;;
esac

for doc in de/satzung.typ en/bylaws.typ; do
  typst compile --root . --input "rev=$rev" --input "fonts=$fonts" "$doc"
  echo "built ${doc%.typ}.pdf (rev $rev, fonts $fonts)"
done
