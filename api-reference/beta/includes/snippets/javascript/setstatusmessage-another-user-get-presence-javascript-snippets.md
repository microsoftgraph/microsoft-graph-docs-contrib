---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let presence = await client.api('/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence')
	.version('beta')
	.get();

```