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
      '@odata.type': 'microsoft.graph.emailIdentity',
      email: 'LauraW@foo.com'
    },
    {
      '@odata.type': 'microsoft.graph.teamworkUserIdentity',
      userPrincipalName: 'MaiaR@foobar.com'
    },
    {
      '@odata.type': 'microsoft.graph.teamworkUserIdentity',
      id: 'bd6a223f-59b5-46dd-90bc-0ddebaf3da5a'
    }
  ],
  interactionType: 'createChat'
};

await client.api('/teamwork/determineIfInteractionIsAllowed')
	.version('beta')
	.post(_boolean);

```