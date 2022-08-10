---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/groups/{id}/members')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.filter('startswith(displayName, \'a\')')
	.get();

```