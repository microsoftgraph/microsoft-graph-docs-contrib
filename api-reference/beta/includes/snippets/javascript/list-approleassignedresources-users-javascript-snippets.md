---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appRoleAssignedResources = await client.api('/me/appRoleAssignedResources')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.select('displayName,accountEnabled,servicePrincipalType,signInAudience')
	.get();

```