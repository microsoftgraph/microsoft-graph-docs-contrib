---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamsTab = {
  displayName: 'My Contoso Tab - updated'
};

await client.api('/teams/{id}/channels/{id}/tabs/{id}')
	.update(teamsTab);

```