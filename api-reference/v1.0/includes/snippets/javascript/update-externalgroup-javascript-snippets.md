---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalGroup = {
  displayName: 'Contoso Marketing',
  description: 'The product marketing team'
};

await client.api('/connections/{connectionsId}/groups/{externalGroupId}')
	.update(externalGroup);

```