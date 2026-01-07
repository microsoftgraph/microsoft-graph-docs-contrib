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
      userPrincipalName: 'maia@contoso.com'
    }
  ],
  interactionType: 'createChat'
};

await client.api('/teamwork/determineIfInteractionIsAllowed')
	.version('beta')
	.post(_boolean);

```