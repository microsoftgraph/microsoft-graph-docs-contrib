---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const chatMessage = {
    body: {
        contentType: 'html',
        content: '<emoji alt=\"😶‍🌫️\"></emoji>'
    }
};

await client.api('/chats/19:b7867210a3fa4848a5a2a30c210eb9ae@thread.v2/messages')
	.post(chatMessage);

```