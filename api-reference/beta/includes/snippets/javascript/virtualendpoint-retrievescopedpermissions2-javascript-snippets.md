---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let retrieveScopedPermissions = await client.api('/deviceManagement/virtualEndpoint/retrieveScopedPermissions')
	.version('beta')
	.filter('permission in (\'Microsoft.CloudPC/ProvisioningPolicies/Update\',\'Microsoft.CloudPC/ProvisioningPolicies/Create\')')
	.get();

```