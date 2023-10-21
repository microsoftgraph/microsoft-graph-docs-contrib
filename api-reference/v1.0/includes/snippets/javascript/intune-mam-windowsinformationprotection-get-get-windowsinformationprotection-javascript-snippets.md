---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managedAppPolicy = await client.api('/deviceAppManagement/managedAppPolicies/{managedAppPolicyId}')
	.get();

```