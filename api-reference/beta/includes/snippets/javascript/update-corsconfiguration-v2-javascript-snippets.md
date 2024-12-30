---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const corsConfiguration_v2 = {
  '@odata.type': '#microsoft.graph.corsConfiguration_v2',
  resource: '/',
  allowedOrigins: [
    ''
  ],
  allowedHeaders: [
    ''
  ],
  allowedMethods: [
    ''
  ],
  maxAgeInSeconds: 3000
};

await client.api('/applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{segmentid}/corsConfigurations/{id}')
	.version('beta')
	.update(corsConfiguration_v2);

```