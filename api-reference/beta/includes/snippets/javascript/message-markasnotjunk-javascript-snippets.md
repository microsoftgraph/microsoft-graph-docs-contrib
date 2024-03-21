---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  moveToInbox: true
};

await client.api('/me/messages/AAMkADhAAATs28OAAA=/markAsNotJunk')
	.version('beta')
	.post(message);

```