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
    '@odata.type': 'microsoft.graph.teamworkUserIdentity',
    id: 'f47ac10b-58cc-4372-a567-0e02b2c3d479',
    tenantId: 'a1b2c3d4-e5f6-7890-1234-567890abcdef'
  }
};

await client.api('/chats/{chatsId}/removeAllAccessForUser')
	.version('beta')
	.post(removeAllAccessForUser);

```