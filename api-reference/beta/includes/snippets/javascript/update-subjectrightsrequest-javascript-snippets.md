---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subjectRightsRequest = {
    '@odata.type': '#microsoft.graph.subjectRightsRequest',
    internalDueDateTime: '2021-08-30T00:00:00Z'
};

await client.api('/privacy/subjectRightsRequests/{subjectRightsRequestId}')
	.version('beta')
	.update(subjectRightsRequest);

```