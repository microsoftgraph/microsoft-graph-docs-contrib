---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  moveToJunk: true
};

await client.api('/me/messages/AAMkADhAAATs28OAAA=/markAsJunk')
	.version('beta')
	.post(message);

```