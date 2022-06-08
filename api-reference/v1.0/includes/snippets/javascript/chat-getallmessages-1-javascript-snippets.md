---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAllMessages = await client.api('/users/0b4f1cf6-54c8-4820-bbb7-2a1f4257ade5/chats/getAllMessages')
	.top(2)
	.get();

```