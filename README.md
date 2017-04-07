# Convert .dae to gltf

Uses the master branch of https://github.com/KhronosGroup/COLLADA2GLTF/ for building

```
docker run --rm -v $(pwd):/app wec360/collada-to-gltf modeltoconvert.dae
```