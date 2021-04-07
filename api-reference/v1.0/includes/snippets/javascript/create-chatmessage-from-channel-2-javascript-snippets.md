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
    content: 'Hello World <at id=\"0\">Jane Smith</at>'
  },
  mentions: [
    {
      id: 0,
      mentionText: 'Jane Smith',
      mentioned: {
        user: {
          displayName: 'Jane Smith',
          id: 'ef1c916a-3135-4417-ba27-8eb7bd084193',
          userIdentityType: 'aadUser'
        }
      }
    }
  ]
};

await client.api('/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/messages')
	.post(chatMessage);

```