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

await client.api('/chats/19:7fb82b685f9c457296a0ab6a1d98b4c1@thread.v2/messages')
	.version('beta')
	.post(chatMessage);

```