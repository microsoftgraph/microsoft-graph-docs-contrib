---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackageResourceRoles = await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs/cec5d6ab-c75d-47c0-9c1c-92e89f66e384/accessPackageResourceRoles')
	.version('beta')
	.filter('(originSystem eq \'AadGroup\' and accessPackageResource/id eq \'4a1e21c5-8a76-4578-acb1-641160e076e8\' and displayName eq \'Member\')')
	.expand('accessPackageResource/id eq \'4a1e21c5-8a76-4578-acb1-641160e076e8\' and displayName eq \'Member\')')
	.get();

```