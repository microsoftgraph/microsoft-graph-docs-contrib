---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipals = await client.api('/servicePrincipals')
	.header('ConsistencyLevel','eventual')
	.filter('owners/$count eq 0 or owners/$count eq 1')
	.get();

```