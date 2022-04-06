---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identityGovernance/entitlementManagement/accessPackages/fb449cf8-3a59-4d86-bdfd-a1b7299681de/getApplicablePolicyRequirements')
	.version('beta')
	.post();

```