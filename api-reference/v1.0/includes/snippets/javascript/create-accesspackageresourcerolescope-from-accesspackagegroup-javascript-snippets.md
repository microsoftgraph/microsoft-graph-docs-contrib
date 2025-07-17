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
        displayName: 'Member',
        originSystem: 'AadGroup',
        originId: 'Member_0282e19d-bf41-435d-92a4-99bab93af305',
        resource: {
            id: 'b16e0e71-17b4-4ebd-a3cd-8a468542e418',
            displayName: 'example group',
            description: 'a group whose members are to be assigned via an access package',
            originId: '0282e19d-bf41-435d-92a4-99bab93af305',
            originSystem: 'AadGroup'
        }
    },
    scope: {
        id: '83b3e3e9-c8b3-481b-ad80-53e29d1eda9c',
        displayName: 'Root',
        description: 'Root Scope',
        originId: '0282e19d-bf41-435d-92a4-99bab93af305',
        originSystem: 'AadGroup',
        isRootScope: true
    }
};

await client.api('/identityGovernance/entitlementManagement/accessPackages/cdd5f06b-752a-4c9f-97a6-82f4eda6c76d/resourceRoleScopes')
	.post(accessPackageResourceRoleScope);

```