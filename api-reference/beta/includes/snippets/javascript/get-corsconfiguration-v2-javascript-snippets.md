---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let corsConfiguration_v2 = await client.api('/applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{segmentid}/corsConfigurations/{id}')
	.version('beta')
	.get();

```