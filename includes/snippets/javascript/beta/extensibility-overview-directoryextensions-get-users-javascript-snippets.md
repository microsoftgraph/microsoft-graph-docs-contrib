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
	.select('id,displayName,extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker,extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable')
	.get();

```