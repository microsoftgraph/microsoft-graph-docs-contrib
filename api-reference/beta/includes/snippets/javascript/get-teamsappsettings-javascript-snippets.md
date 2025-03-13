---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamsAppSettings = await client.api('/teamwork/teamsAppSettings')
	.version('beta')
	.get();

```