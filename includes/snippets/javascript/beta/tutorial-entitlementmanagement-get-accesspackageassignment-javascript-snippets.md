---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackageAssignments = await client.api('/identityGovernance/entitlementManagement/accessPackageAssignments')
	.version('beta')
	.filter('accessPackageAssignmentPolicy/Id eq \'db440482-1210-4a60-9b55-3ac7a72f63ba\'')
	.expand('target,accessPackageAssignmentResourceRoles')
	.get();

```