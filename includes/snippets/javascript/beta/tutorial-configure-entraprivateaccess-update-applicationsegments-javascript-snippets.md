---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ipApplicationSegment = {
   protocol: 'tcp,udp' 
};

await client.api('/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83/onPremisesPublishing/segmentsConfiguration/microsoft.graph.ipSegmentConfiguration/applicationSegments/{segmentID}')
	.version('beta')
	.update(ipApplicationSegment);

```