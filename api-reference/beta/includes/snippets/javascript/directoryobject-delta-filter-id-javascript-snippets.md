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
	.filter('id eq \'87d349ed-44d7-43e1-9a83-5f2406dee5bd\'')
	.get();

```