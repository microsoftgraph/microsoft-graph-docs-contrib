---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let user = await client.api('/me')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.expand('manager($levels=max;$select=id,displayName)')
	.select('id,displayName')
	.get();

```