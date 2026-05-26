---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const chatMessage = {
   createdDateTime: '2019-02-04T19:58:15.511Z',
   from: {
      user: {
         id: '8ea0e38b-efb3-4757-924a-5f94061cf8c2',
         displayName: 'Robin Kline',
         userIdentityType: 'aadUser'
      }
   },
   body: {
      contentType: 'html',
      content: 'Hello World'
   }
};

await client.api('/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/messages')
	.version('beta')
	.post(chatMessage);

```