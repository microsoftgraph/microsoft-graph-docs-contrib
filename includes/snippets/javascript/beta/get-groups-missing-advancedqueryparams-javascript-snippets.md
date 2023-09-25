---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groups = await client.api('/groups')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.filter('createdDateTime ge 2021-11-01')
	.get();

```