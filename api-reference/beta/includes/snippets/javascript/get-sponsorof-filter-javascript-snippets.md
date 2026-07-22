---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sponsorOf = await client.api('/users/025e5e3e-e5b7-4eb4-ba1f-4e5b0579f1a2/sponsorOf')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.filter('microsoft.graph.user/userType eq \'Guest\'')
	.get();

```