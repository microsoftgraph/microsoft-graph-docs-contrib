---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const pinnedChatMessageInfo = {
   'message@odata.bind':'https://graph.microsoft.com/v1.0/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1616964509832'
};

await client.api('/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/pinnedMessages')
	.post(pinnedChatMessageInfo);

```