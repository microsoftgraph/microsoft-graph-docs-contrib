---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getShifts = await client.api('/me/joinedTeams/getShifts')
	.version('beta')
	.get();

```