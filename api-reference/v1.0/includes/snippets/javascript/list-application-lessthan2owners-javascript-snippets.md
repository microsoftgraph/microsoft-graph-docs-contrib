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
	.filter('owners/$count eq 0 or owners/$count eq 1')
	.select('id,displayName')
	.get();

```