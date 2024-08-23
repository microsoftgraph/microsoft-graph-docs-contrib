---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const removeAllAccessForUser = {
  user: {
    '@odata.type': 'microsoft.graph.teamworkUserIdentity'
  }
};

await client.api('/chats/{chatsId}/removeAllAccessForUser')
	.version('beta')
	.post(removeAllAccessForUser);

```