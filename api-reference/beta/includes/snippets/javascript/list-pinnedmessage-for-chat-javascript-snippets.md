---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let pinnedMessages = await client.api('/chats/19:d65713bc498c4a428c71ef9353e6ce20@thread.v2/pinnedMessages')
	.version('beta')
	.get();

```