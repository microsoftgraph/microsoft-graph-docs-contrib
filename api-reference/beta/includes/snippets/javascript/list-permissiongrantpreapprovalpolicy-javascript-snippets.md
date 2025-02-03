---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissionGrantPreApprovalPolicies = await client.api('/policies/permissionGrantPreApprovalPolicies')
	.version('beta')
	.get();

```