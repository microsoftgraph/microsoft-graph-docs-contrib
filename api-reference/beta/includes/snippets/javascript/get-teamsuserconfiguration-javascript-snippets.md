---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamsUserConfiguration = await client.api('/admin/teams/userConfigurations/5c802b19-3600-83f1-1767-7b9edc7f38ab')
	.version('beta')
	.get();

```