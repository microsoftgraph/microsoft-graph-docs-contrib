---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackageResourceRoles = await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs/15d889df-3eb8-4e9b-bfb4-b1908849aec4/accessPackageResourceRoles')
	.version('beta')
	.filter('(originSystem eq \'AadGroup\' and accessPackageResource/id eq \'a35bef72-a8aa-4ca3-af30-f6b2ece7208f\')')
	.expand('accessPackageResource/id eq \'a35bef72-a8aa-4ca3-af30-f6b2ece7208f\')')
	.get();

```