#!//usr/bin/env bash
set -x
set -o pipefail

filename=$(basename -- "${1}")

TMP_FILE=/tmp/"${filename}"
ffmpeg -y -i "${1}" -metadata:s:v rotate="180" -codec copy "${TMP_FILE}" 
mv "${TMP_FILE}" "${1}"
rm -fv "${TMP_FILE}"
