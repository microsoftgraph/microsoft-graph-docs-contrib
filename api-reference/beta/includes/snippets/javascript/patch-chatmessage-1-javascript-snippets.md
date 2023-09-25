---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const chatMessage = {
  messageType: 'message',
  subject: null,
  summary: null,
  importance: 'normal',
  locale: 'en-us',
  from: {
    application: null,
    device: null,
    user: {
      id: '3b102402-813e-4e17-a6b2-f841aef1fdfc',
      displayName: 'Sumit Gupta',
      userIdentityType: 'aadUser'
    },
    conversation: null
  },
  body: {
    contentType: 'text',
    content: 'Edit text only'
  },
  attachments: [],
  mentions: [],
  reactions: [],
  messageHistory: []
};

await client.api('/teams/e1234567-e123-4276-55555-6232b0e3a89a/channels/a7654321-e321-0000-0000-123b0e3a00a/messages/19:a21b0b0c05194ebc9e30000000000f61@thread.skype')
	.version('beta')
	.update(chatMessage);

```