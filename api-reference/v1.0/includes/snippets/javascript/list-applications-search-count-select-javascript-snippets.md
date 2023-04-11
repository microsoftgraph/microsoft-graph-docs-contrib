---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applications = await client.api('/applications')
	.header('ConsistencyLevel','eventual')
	.search('displayName:Web')
	.select('appId,identifierUris,displayName,publisherDomain,signInAudience')
	.get();

```