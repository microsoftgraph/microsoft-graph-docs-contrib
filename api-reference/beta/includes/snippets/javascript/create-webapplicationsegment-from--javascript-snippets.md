---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const webApplicationSegment = {
    externalUrl: 'https://fe.contoso.com',
    internalUrl: 'https://be.contoso.com',
    corsConfigurations: [
        {
            resource: '/',
            allowedOrigins: '*',
            allowedHeaders: '*',
            allowedMethods: '*',
            maxAgeInSeconds: '3000'
        }
    ]
};

await client.api('/applications/2709c601-fcff-4010-94ea-5f862f755568/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/')
	.version('beta')
	.post(webApplicationSegment);

```