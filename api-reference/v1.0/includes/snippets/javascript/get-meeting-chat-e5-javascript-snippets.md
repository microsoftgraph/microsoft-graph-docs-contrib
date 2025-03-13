---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let chat = await client.api('/chats/19:ebe3857aa388434bab0cad9d2e09f4de@thread.v2')
	.expand('lastMessagePreview')
	.get();

```