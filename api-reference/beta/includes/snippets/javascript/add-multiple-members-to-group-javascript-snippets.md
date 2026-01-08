---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
  'members@odata.bind': [
    'https://graph.microsoft.com/beta/directoryObjects/{id}',
    'https://graph.microsoft.com/beta/directoryObjects/{id}',
    'https://graph.microsoft.com/beta/directoryObjects/{id}'
    ]
};

await client.api('/groups/{group-id}')
	.version('beta')
	.update(group);

```