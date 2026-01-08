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

await client.api('/teams/1e769eab-06a8-4b2e-ac42-1f040a4e52a1/channels/19:b6343216390d46cba965fe36bd877674@thread.tacv2/messages/1727810802267/replies/forwardToChat')
	.version('beta')
	.post(actionResultPart);

```