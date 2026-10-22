#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p build
expected=$'Sum: 130\nAverage: 26.00'

check_output() {
  local label="$1"; shift
  local actual
  actual=$("$@")
  if [[ "$actual" != "$expected" ]]; then
    printf 'FAIL [%s]\nExpected:\n%s\nActual:\n%s\n' "$label" "$expected" "$actual" >&2
    exit 1
  fi
  printf 'PASS [%s]\n%s\n\n' "$label" "$actual"
}

if command -v gfortran >/dev/null 2>&1; then
  gfortran -std=f2008 -Wall -Wextra -fcheck=all src/fortran/main.f90 -o build/fortran_demo
  check_output Fortran ./build/fortran_demo
else
  echo 'SKIP [Fortran]: gfortran missing'
fi

if command -v gcc >/dev/null 2>&1; then
  gcc -std=c11 -Wall -Wextra -Wpedantic -Werror src/c/main.c -o build/c_demo
  check_output C ./build/c_demo
else
  echo 'SKIP [C]: gcc missing'
fi

if command -v cargo >/dev/null 2>&1; then
  cargo build --quiet --manifest-path src/rust/Cargo.toml
  check_output Rust ./src/rust/target/debug/statistics-rust
else
  echo 'SKIP [Rust]: Rust/Cargo missing; source requires local verification'
fi
