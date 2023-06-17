---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const markChatUnreadForUser = {
  user: {
    id: 'd864e79f-a516-4d0f-9fee-0eeb4d61fdc2',
    tenantId: '2a690434-97d9-4eed-83a6-f5f13600199a'
  },
  lastMessageReadDateTime: '2021-05-27T22:13:01.577Z'
};

await client.api('/chats/19:7d898072-792c-4006-bb10-5ca9f2590649_8ea0e38b-efb3-4757-924a-5f94061cf8c2@unq.gbl.spaces/markChatUnreadForUser')
	.post(markChatUnreadForUser);

```