---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appliesTo = await client.api('/policies/appManagementPolicies/{id}/appliesTo')
	.version('beta')
	.select('id,appId,displayName,createdDateTime')
	.get();

```