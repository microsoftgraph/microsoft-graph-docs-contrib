---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const _boolean = {
  users: 
  [
    {
      '@odata.type': 'microsoft.graph.teamworkUserIdentity',
      id: '59b5bc69-ca73-4ffd-a2e0-88a79115d13b'
    }
  ],
  interactionType: 'createChat'
};

await client.api('/teamwork/determineIfInteractionIsAllowed')
	.version('beta')
	.post(_boolean);

```