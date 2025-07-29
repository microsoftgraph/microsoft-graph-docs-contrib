---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const corsConfiguration_v2 = {
  allowedOrigins: [''],
  allowedHeaders: [''],
  allowedMethods: ['*'],
  maxAgeInSeconds: 3000,
  resource: '/'
};

await client.api('/applications/129d6e80-484f-4d1f-bfca-a6a859d138ac/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/ApplicationSegments/209efffb-0777-42b0-a65c-4e3ddb1ab3c0/corsConfigurations')
	.version('beta')
	.post(corsConfiguration_v2);

```