---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applications = await client.api('/applications')
	.search('displayName:Browser')
	.get();

```