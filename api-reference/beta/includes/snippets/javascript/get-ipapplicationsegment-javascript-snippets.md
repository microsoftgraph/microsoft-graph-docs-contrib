---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let ipApplicationSegment = await client.api('/applications/dcc40202-6223-488b-8e64-28aa1a803d6c/onPremisesPublishing/segmentsConfiguration/microsoft.graph.IpSegmentConfiguration/ApplicationSegments/df8cb1a6-4bbf-4da3-8f85-fe2fc439ab80')
	.version('beta')
	.get();

```