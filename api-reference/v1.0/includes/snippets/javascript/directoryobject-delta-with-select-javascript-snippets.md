---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/directoryObjects/delta')
	.filter('isof(\'microsoft.graph.user\') or isof(\'microsoft.graph.group\')')
	.select('microsoft.graph.user,microsoft.graph.group')
	.get();

```