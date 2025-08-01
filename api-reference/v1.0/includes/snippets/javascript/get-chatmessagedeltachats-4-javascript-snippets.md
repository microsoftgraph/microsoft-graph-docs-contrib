---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/users/5ed12dd6-24f8-4777-be3d-0d234e06cefa/chats/getAllMessages/delta')
	.get();

```