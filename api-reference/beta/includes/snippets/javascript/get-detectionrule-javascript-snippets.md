---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let detectionRule = await client.api('/security/rules/detectionRules/7506')
	.version('beta')
	.get();

```