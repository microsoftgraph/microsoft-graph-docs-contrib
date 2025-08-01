---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignments = await client.api('/education/classes/ce2cd7da-e41b-4e66-8390-c9251e4c3a40/assignments?$ordeby= id')
	.version('beta')
	.get();

```