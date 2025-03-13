---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let conversationMember = await client.api('/chats/{id}/members/{id}')
	.get();

```