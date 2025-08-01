---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let chatMessage = await client.api('/chats/19:80a7ff67c0ef43c19d88a7638be436b1@thread.v2/messages/1725986575123')
	.version('beta')
	.get();

```