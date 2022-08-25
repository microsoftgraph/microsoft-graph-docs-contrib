---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mobileDeviceManagementPolicies = await client.api('/policies/mobileDeviceManagementPolicies')
	.version('beta')
	.get();

```