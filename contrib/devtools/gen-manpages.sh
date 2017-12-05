#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

KORID=${KORID:-$SRCDIR/korid}
KORICLI=${KORICLI:-$SRCDIR/kori-cli}
KORITX=${KORITX:-$SRCDIR/kori-tx}
KORIQT=${KORIQT:-$SRCDIR/qt/kori-qt}

[ ! -x $KORID ] && echo "$KORID not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
KORVER=($($KORICLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for korid if --version-string is not set,
# but has different outcomes for kori-qt and kori-cli.
echo "[COPYRIGHT]" > footer.h2m
$KORID --version | sed -n '1!p' >> footer.h2m

for cmd in $KORID $KORICLI $KORITX $KORIQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${KORVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${KORVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
