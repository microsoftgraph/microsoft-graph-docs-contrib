---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageResourceRoleScope = {
    role: {
        displayName: 'Contributors',
        originSystem: 'SharePointOnline',
        originId: '4',
        resource: {
            id: '53c71803-a0a8-4777-aecc-075de8ee3991'
        }
    },
    scope: {
        displayName: 'Root',
        description: 'Root Scope',
        originId: 'https://contoso.sharepoint.com/portals/Community',
        originSystem: 'SharePointOnline',
        isRootScope: true
    }
};

await client.api('/identityGovernance/entitlementManagement/accessPackages/{id}/resourceRoleScopes')
	.post(accessPackageResourceRoleScope);

```