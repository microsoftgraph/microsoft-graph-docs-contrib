---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/directoryObjects/delta')
	.version('beta')
	.filter('isof(\'microsoft.graph.user\') or isof(\'microsoft.graph.group\')')
	.select(',')
	.get();

```