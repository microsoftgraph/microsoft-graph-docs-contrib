---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teams = await client.api('/teams')
	.filter('startswith(displayName, \'A\')')
	.top(2)
	.get();

```