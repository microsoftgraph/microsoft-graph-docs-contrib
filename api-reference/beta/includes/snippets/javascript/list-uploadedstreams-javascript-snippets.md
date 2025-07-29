---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let uploadedStreams = await client.api('/security/dataDiscovery/cloudAppDiscovery/uploadedStreams')
	.version('beta')
	.get();

```