---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let group = await client.api('/devices/{id}/memberOf/microsoft.graph.group')
	.header('ConsistencyLevel','eventual')
	.filter('startswith(displayName, \'A\')')
	.orderby('displayName')
	.get();

```