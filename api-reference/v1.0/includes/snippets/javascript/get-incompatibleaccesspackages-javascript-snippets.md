---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let incompatibleAccessPackages = await client.api('/identityGovernance/entitlementManagement/accessPackages/73eb2497-3b88-4c0a-8bb3-68ba8162beff/incompatibleAccessPackages')
	.get();

```