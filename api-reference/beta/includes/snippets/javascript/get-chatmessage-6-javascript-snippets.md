---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let chatMessage = await client.api('/chats/19:e2ed97baac8e4bffbb91299a38996790@thread.v2/messages/1727903166936')
	.version('beta')
	.get();

```