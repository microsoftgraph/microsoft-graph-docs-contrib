---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
  '@odata.type': '#microsoft.graph.agentUser',
  accountEnabled: true,
  displayName: 'Adele Vance',
  mailNickname: 'AdeleV',
  userPrincipalName: 'AdeleV@contoso.com',
  identityParentId: ''
};

await client.api('/users')
	.version('beta')
	.post(user);

```