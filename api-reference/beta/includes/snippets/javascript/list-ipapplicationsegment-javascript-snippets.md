---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applicationSegments = await client.api('/applications/dcc40202-6223-488b-8e64-28aa1a803d6c/onPremisesPublishing/segmentsConfiguration/microsoft.graph.IpSegmentConfiguration/ApplicationSegments')
	.version('beta')
	.get();

```