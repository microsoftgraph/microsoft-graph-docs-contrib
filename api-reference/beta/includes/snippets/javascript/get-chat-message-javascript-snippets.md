---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let chatMessage = await client.api('/me/chats/{id}/messages/{id}')
	.version('beta')
	.get();

```