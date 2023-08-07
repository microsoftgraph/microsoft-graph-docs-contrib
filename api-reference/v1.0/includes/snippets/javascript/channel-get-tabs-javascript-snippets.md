---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamsTab = await client.api('/teams/{id}/channels/{id}/tabs/{id}')
	.expand('teamsApp')
	.get();

```