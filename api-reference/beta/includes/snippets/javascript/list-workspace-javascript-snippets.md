---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workspaces = await client.api('/security/securityCopilot/workspaces')
	.version('beta')
	.get();

```