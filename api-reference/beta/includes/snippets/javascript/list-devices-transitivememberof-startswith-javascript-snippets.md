---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let group = await client.api('/devices/{id}/transitiveMemberOf/microsoft.graph.group')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.filter('startswith(displayName, \'a\')')
	.orderby('displayName')
	.get();

```