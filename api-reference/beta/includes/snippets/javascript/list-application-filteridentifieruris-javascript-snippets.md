---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applications = await client.api('/applications')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.filter('identifierUris/any(x:startswith(x,\'api://\'))')
	.get();

```