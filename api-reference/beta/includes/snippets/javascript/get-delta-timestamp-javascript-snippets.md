---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/me/drive/root/delta?token=2021-09-29T20%3A00%3A00Z')
	.version('beta')
	.get();

```