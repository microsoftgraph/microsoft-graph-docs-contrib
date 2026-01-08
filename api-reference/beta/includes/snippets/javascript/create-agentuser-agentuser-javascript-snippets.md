---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
  accountEnabled: true,
  displayName: 'Sales Agent',
  mailNickname: 'SalesAgent',
  userPrincipalName: 'salesagent@contoso.com',
  identityParentId: 'a1b2c3d4-e5f6-7890-abcd-ef1234567890'
};

await client.api('/users/microsoft.graph.agentUser')
	.version('beta')
	.post(user);

```