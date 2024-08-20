---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let communities = await client.api('/employeeExperience/communities')
	.version('beta')
	.top(2)
	.get();

```