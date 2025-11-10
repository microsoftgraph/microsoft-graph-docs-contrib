---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let plugins = await client.api('/security/securityCopilot/workspaces/default/plugins')
	.version('beta')
	.filter('name eq \'Entra\'')
	.get();

```