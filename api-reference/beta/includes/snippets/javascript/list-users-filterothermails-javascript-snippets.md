---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let users = await client.api('/users')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.filter('otherMails/any(x:endswith(x,\'.edu\'))')
	.get();

```