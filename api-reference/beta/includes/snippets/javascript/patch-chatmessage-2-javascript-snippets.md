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
  deletedDateTime: null,
  subject: null,
  summary: null,
  importance: 'normal',
  locale: 'en-us',
  from: {
    application: null,
    device: null,
    conversation: null,
    user: {
      id: '6b3f3c54-d09c-4fdd-b146-9b514a8a4f40',
      displayName: 'Sumit Gupta',
      userIdentityType: 'aadUser'
    }
  },
  body: {
    contentType: 'html',
    content: '<div><div>\n<div>\n<div>\n<div>\n<div><at id=\"0\">Raghav</at><at id=\"1\">TestGlobalBot</at> YEAH'
  },
  attachments: [],
  mentions: [
    {
      id: 0,
      mentionText: 'Raghav',
      mentioned: {
        application: null,
        device: null,
        conversation: null,
        user: {
          id: 'f1b66449-b46d-49b0-9c3c-53c10234c818e',
          displayName: 'Raghav Mankad',
          userIdentityType: 'aadUser'
        }
      }
    },
    {
      id: 1,
      mentionText: 'TestGlobalBot',
      mentioned: {
        application: {
          id: '03a02232-d8f5-4970-a77e-6e8c76ce7a4e',
          displayName: 'TestGlobalBot',
          applicationIdentityType: 'bot'
        },
        device: null,
        conversation: null,
        user: null
      }
    }
  ],
  reactions: [],
  messageHistory: []
};

await client.api('/teams/e1234567-e123-4276-55555-6232b0e3a89a/channels/a7654321-e321-0000-0000-123b0e3a00a/messages/19:a21b0b0c05194ebc9e30000000000f61@thread.skype')
	.version('beta')
	.update(chatMessage);

```