---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const webApplicationSegment = {
  externalUrl: 'https://test.contoso.net',
  corsConfigurations: [
        {
            id: 'd65fd5ca-8d08-4276-a2a6-0f8488227003',
            resource: '/',
            allowedOrigins: [
                'https://blah1.testinggs.com/'
            ],
            allowedHeaders: [
                '*'
            ],
            allowedMethods: [
                '*'
            ],
            maxAgeInSeconds: 0
        }
    ]
};

await client.api('/applications/2709c601-fcff-4010-94ea-5f862f755568/onPremisesPublishing/segmentsConfiguration/microsoft.graph.webSegmentConfiguration/applicationSegments/{segmentId}')
	.version('beta')
	.update(webApplicationSegment);

```