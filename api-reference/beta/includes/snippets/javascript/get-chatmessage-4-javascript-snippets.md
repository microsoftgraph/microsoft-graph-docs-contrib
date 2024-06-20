---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let chatMessage = await client.api('/chats/19:bcf84b15c2994a909770f7d05bc4fe16@thread.v2/messages/1706763669648')
	.version('beta')
	.get();

```