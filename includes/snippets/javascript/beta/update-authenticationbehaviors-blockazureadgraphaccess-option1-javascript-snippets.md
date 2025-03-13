---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationBehaviors = {
    blockAzureADGraphAccess: false
};

await client.api('/applications/5c142e6f-0bd3-4e58-b510-8a106704f44f/authenticationBehaviors')
	.version('beta')
	.update(authenticationBehaviors);

```