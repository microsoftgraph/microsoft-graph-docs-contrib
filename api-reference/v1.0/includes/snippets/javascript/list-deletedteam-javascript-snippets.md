---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deletedTeams = await client.api('/teamwork/deletedTeams')
	.get();

```