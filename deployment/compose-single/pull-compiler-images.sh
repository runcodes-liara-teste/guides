#!/bin/bash


image_prefix="ghcr.io/runcodes-icmc/compiler-images-"
image_suffix=":latest"

images=(
    "c"
    "cpp"
    "fortran"
    "haskell"
    "java"
    "pascal"
    "portugol"
    "python"
    "r"
    "rust"
)

for image in "${images[@]}"; do
    docker pull "${image_prefix}${image}${image_suffix}"
done
