# 8th Wall Engine

> [!IMPORTANT]
> This is not the MIT-licensed open source 8th Wall engine. That is in a separate repository which can be found [here](https://github.com/8thwall/8thwall/blob/main/packages/engine/README.md).

## Usage

See https://8thwall.org/docs/engine/overview for a more detailed guide.

### Option 1: Script tag

```html
<script src="https://cdn.jsdelivr.net/npm/@8thwall/engine-binary@1/dist/xr.js" async crossorigin="anonymous" data-preload-chunks="slam"></script>
```

### Option 2: npm

```
npm install @8thwall/engine-binary
```

You will need to copy the included artifacts into your dist folder, for example in webpack:

```js
new CopyWebpackPlugin({
  patterns: [
    {
      from: 'node_modules/@8thwall/engine-binary/dist',
      to: 'external/xr',
    }
  ]
})
```

You can then load the SDK by adding the following to index.html:

```html
<script src="./external/xr/xr.js" async data-preload-chunks="slam"></script>
```

When importing the package, you will get a simple helper for accessing XR8 once it is loaded. This promise will only resolve if the script tag is included in the HTML.

```js
import {XR8Promise} from '@8thwall/engine-binary'

XR8Promise.then((XR8) => XR8.XrController.configure({}))
```

## Overview

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
