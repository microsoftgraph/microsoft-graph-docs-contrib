---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipals = await client.api('/servicePrincipals')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.search('displayName:Team')
	.select('accountEnabled,displayName,publisherName,servicePrincipalType,signInAudience')
	.get();

```