---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamsApps = await client.api('/appCatalogs/teamsApps')
	.version('beta')
	.filter('id eq \'a5228c26-a9ae-4702-90e0-79a5246d2f7d\'')
	.expand('appDefinitions($select=id,authorization)')
	.get();

```