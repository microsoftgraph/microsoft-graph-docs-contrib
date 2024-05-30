---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let updatableAssetGroup = await client.api('/admin/windows/updates/updatableAssets/microsoft.graph.windowsUpdates.updatableAssetGroup')
	.version('beta')
	.get();

```