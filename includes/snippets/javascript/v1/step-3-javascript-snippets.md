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
    content: 'Hello World'
  }
};

await client.api('/chats/19:b1234aaa12345a123aa12aa12aaaa1a9@thread.v2/messages')
	.post(chatMessage);

```