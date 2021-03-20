---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let chatMessageHostedContent = await client.api('/chats/{id}/messages/{id}/hostedContents/{id}')
	.version('beta')
	.get();

```