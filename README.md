# 8th Wall Engine

> [!IMPORTANT]
> This is not the MIT-licensed open source 8th Wall engine. That is in a separate repository which can be found [here](https://github.com/8thwall/8thwall/blob/main/packages/engine/README.md).

## Usage

See https://8thwall.org/docs/engine/overview for more detailed information.

### Option 1: Script tag

```html
<script async src=" https://cdn.jsdelivr.net/npm/@8thwall/engine-binary@1/dist/xr.js" data-preload-chunks="slam"></script>
```

### Option 2: npm

```
npm install @8thwall/engine-binary
```

When installed through npm, you will copy the artifacts into your published project, for example in webpack:

```js
// Example webpack configuration
new CopyWebpackPlugin({
  patterns: [
    {
      from: 'node_modules/@8thwall/engine-binary/dist',
      to: 'external/xr',
    }
  ]
})
```

```html
<script async src="./external/xr/xr.js" data-preload-chunks="slam"></script>
```

## Overview

The 8th Wall engine binary contains the core 8th Wall AR engine

It is provided as closed source and governed by a limited-use distribution license.

The 8th Wall engine binary includes the core AR capabilities that power 8th Wall experiences, including:

- World Effects
- Face Effects
- Image Targets
- Sky Effects
- Absolute Scale

The 8th Wall engine binary does not include:

- Source code access
- The ability to modify or recompile the engine
- Niantic Spatial products such as VPS, Lightship Maps, or the Geospatial Browser
- Hand Tracking

## Acceptable Use and License

The Distributed Engine Binary is available through a limited-use license which places restrictions on how it can be used. The full license text is [here](https://github.com/8thwall/engine/blob/main/LICENSE). Please see the [Permitted Use FAQ](https://8thwall.org/docs/migration/faq#distributed-engine-binary-license-and-permitted-use) and [Attribution Guidelines](https://8thwall.org/docs/open-source) for more information.
