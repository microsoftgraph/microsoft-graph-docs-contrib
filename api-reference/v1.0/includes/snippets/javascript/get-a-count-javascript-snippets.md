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
	.filter('startswith(displayName, \'a\')')
	.orderby('displayName')
	.top(1)
	.get();

```