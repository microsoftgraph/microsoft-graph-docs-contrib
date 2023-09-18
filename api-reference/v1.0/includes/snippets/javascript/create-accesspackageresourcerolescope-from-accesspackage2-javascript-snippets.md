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
        id: '6646a29e-da03-49f6-bcd9-dec124492de3',
        displayName: 'Contributors',
        description: null,
        originSystem: 'SharePointOnline',
        originId: '4',
        resource: {
            id: '53c71803-a0a8-4777-aecc-075de8ee3991'
        }
    },
    scope: {
        id: '5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33',
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