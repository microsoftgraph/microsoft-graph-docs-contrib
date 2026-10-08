---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policies = await client.api('/admin/windows/updates/policies')
	.version('beta')
	.filter('isof(\'microsoft.graph.windowsUpdates.qualityUpdatePolicy\')')
	.get();

```