---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let serviceprincipals = await client.api('/serviceprincipals')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.filter('owners/$count eq 0 or owners/$count eq 1')
	.select('id,displayName')
	.get();

```