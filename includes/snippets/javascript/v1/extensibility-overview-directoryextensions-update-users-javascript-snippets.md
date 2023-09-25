---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
    extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable: null,
    extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker: 'E4'
};

await client.api('/users/63384f56-42d2-4aa7-b1d6-b10c78f143a2')
	.update(user);

```