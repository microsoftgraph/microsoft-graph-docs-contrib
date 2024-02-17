---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getTimesOff = await client.api('/me/joinedTeams/getTimesOff')
	.version('beta')
	.get();

```