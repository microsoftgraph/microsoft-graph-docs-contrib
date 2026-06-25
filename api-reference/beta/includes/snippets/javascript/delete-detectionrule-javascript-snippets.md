---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/security/rules/detectionRules/4790e8ec-9488-3dde-c3a6-be0c4ba14cf9')
	.version('beta')
	.delete();

```