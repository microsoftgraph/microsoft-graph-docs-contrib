---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let orgContact = await client.api('/contacts/25caf6a2-d5cb-470d-8940-20ba795ef62d')
	.version('beta')
	.get();

```