---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let stream = await client.api('/chats/{id}/messages/{id}/hostedContents/{id}/$value')
	.version('beta')
	.get();

```