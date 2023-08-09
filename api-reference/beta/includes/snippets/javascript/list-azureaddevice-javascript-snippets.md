---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let azureADDevice = await client.api('/admin/windows/updates/updatableAssets/microsoft.graph.windowsUpdates.azureADDevice')
	.version('beta')
	.get();

```