---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissionGrantPreApprovalPolicy = await client.api('/servicePrincipals/{id}/permissionGrantPreApprovalPolicies/{id}')
	.version('beta')
	.get();

```