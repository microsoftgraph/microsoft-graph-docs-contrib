---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let detectionRules = await client.api('/security/rules/detectionRules')
	.version('beta')
	.top(3)
	.get();

```