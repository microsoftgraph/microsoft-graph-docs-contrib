---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const actionResultPart = {
  targetChatIds: [
    '19:e2ed97baac8e4bffbb91299a38996790@thread.v2'
  ],
  messageIds: [
    '1728088338580'
  ],
  additionalMessage: {
    body: {
      content: 'Hello World'
    }
  }
};

await client.api('/chats/19:97641583cf154265a237da28ebbde27a@thread.v2/messages/forwardToChat')
	.version('beta')
	.post(actionResultPart);

```