---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let operationalInsightsConnection = await client.api('/admin/windows/updates/resourceConnections/microsoft.graph.windowsUpdates.operationalInsightsConnection')
	.version('beta')
	.get();

```