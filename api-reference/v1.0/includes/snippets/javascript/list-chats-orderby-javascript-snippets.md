---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let chats = await client.api('/chats')
	.orderby('lastMessagePreview/createdDateTime desc')
	.get();

```