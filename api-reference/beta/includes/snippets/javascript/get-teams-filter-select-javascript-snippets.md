---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teams = await client.api('/teams')
	.version('beta')
	.filter('displayName eq \'A Contoso Team\'')
	.select('id,description')
	.get();

```