---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deleteTargetedMessage = {
  teamId: '3Aeeaa4e946d674c4f8d4dded613780f45@thread.v2',
  channelId: '19:eeaa4e946d674c4f8d4dded613780f45@thread.v2',
  messageId: '1580849738240'
};

await client.api('/users/f47b5f54-6968-4706-a522-31e842b12345/teamwork/deleteTargetedMessage')
	.version('beta')
	.post(deleteTargetedMessage);

```