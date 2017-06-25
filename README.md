# Convert .dae to gltf 2.0

Uses the latest version of https://github.com/KhronosGroup/COLLADA2GLTF/

```bash
Usage:
  docker run --rm -v $(pwd):/app wec360/collada-to-gltf input.dae output.gltf [options]

Options:
  -i, --input	path of the input COLLADA file	 [0] [required] [string]
  -o, --output	path of the output glTF file	 [1] [string]
  -b, --binary	output binary glTF	 [bool] [default: false]
  --basePath	resolve external uris using this as the reference path	 [string]
  -g, --glsl	output materials with glsl shaders using the KHR_technique_webgl extension	 [bool] [default: false]
  --lockOcclusionMetallicRoughness	set metallicRoughnessTexture to be the same as the occlusionTexture in materials where an ambient texture is defined	 [bool] [default: false]
  -m, --materialsCommon	output materials using the KHR_materials_common extension	 [bool] [default: false]
  --metallicRoughnessTextures	paths to images to use as the PBR metallicRoughness textures	 [vec<string>]
  -s, --separate	output separate binary buffer, shaders, and textures	 [bool] [default: false]
  --specularGlossiness	output PBR materials with the KHR_materials_pbrSpecularGlossiness extension	 [bool] [default: false]
  -t, --separateTextures	output images separately, but embed buffers and shaders	 [bool] [default: false]
```