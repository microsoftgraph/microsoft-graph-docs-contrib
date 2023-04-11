---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackage = {
    '@odata.id': 'https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages/c0a74b4d-2694-4d5d-a964-1bee4ff0aaf2'
};

await client.api('/identityGovernance/entitlementManagement/accessPackages/73eb2497-3b88-4c0a-8bb3-68ba8162beff/incompatibleAccessPackages/$ref')
	.post(accessPackage);

```