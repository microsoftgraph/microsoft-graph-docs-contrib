---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/appCatalogs/teamsApps')
	.version('v1.0')
	.filter('appDefinitions/any(a:a/bot ne null)')
	.expand('appDefinitions($expand=bot)')
	.get();

```