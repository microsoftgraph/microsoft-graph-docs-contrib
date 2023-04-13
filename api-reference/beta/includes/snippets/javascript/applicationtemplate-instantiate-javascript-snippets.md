---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const applicationServicePrincipal = {
    displayName: 'testProperties'
};

await client.api('/applicationTemplates/8adf8e6e-67b2-4cf2-a259-e3dc5476c621/instantiate')
	.version('beta')
	.post(applicationServicePrincipal);

```