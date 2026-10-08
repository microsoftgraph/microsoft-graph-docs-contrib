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
    content: '<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>'
  },
  attachments: [
    {
      id: '74d20c7f34aa4a7fb74e2b30004247c5',
      contentType: 'application/vnd.microsoft.card.fluidEmbedCard',
      content: '{\"componentUrl\': \'{LoopComponent_url}\", \"sourceType\': \"Compose\"}",
      name: null,
      thumbnailUrl: null,
      teamsAppId: 'FluidEmbedCard'
    }
  ]
};

await client.api('/chats/19:7fb82b685f9c457296a0ab6a1d98b4c1@thread.v2/messages')
	.post(chatMessage);

```