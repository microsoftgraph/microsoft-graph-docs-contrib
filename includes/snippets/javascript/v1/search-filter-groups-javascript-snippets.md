---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groups = await client.api('/groups/')
	.header('ConsistencyLevel','eventual')
	.filter('mailEnabled eq true')
	.search('displayName:OneVideo')
	.get();

```