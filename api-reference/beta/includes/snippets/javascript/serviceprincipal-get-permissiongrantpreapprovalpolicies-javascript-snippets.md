---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let response = await client.api('/servicePrincipals/{id}/permissionGrantPreApprovalPolicies/{id}')
	.version('beta')
	.get();

```