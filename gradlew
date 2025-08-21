#!/bin/sh
# Gradle wrapper pour Termux
DIR="$(cd "$(dirname "$0")" && pwd)"
exec gradle "$@"
