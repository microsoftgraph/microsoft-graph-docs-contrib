---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/directoryObjects/delta?filter=isof(\'microsoft.graph.user\')%20or%20isof(\'microsoft.graph.group\')')
	.version('beta')
	.filter('isof(\'microsoft.graph.user\') or isof(\'microsoft.graph.group\')')
	.get();

```