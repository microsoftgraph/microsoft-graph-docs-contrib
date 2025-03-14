---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let discoveredCloudAppDetail = await client.api('/security/dataDiscovery/cloudAppDiscovery/uploadedStreams/93b60b3e-3a28-bf33-2d73-3cb0199c5f7a/microsoft.graph.security.aggregatedAppsDetails(period=duration'P90D')/12345')
	.version('beta')
	.get();

```