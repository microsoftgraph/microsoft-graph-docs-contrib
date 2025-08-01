---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const chatMessage = {
  messageIds: [
    '1728088338580'
  ],
  replyMessage: {
    body: {
      content: 'Hello World'
    }
  }
};

await client.api('/chats/19:97641583cf154265a237da28ebbde27a@thread.v2/messages/replyWithQuote')
	.version('beta')
	.post(chatMessage);

```