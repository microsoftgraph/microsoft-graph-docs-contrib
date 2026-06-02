---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageResourceRoleScope = {
    accessPackageResourceRole: {
        originId: '/subscriptions/828b526f-c769-4b19-9797-734b4843b978/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475',
        displayName: 'Access Review Operator Service Role',
        description: 'Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.',
        accessPackageResource: {
            id: 'b09a0288-a83e-4ae6-8a53-bc09aeb966ea',
            description: 'Dev',
            displayName: 'Dev',
            resourceType: 'Subscription',
            originId: '/subscriptions/828b526f-c769-4b19-9797-734b4843b978',
            originSystem: 'AzureResources'
        },
        originSystem: 'AzureResources',
        type: 'active'
    },
    accessPackageResourceScope: {
        id: 'e1e0ec8c-472d-4ec5-a8f9-29e0bc275640',
        description: '/resourceGroups/rg',
        displayName: '/resourceGroups/rg',
        isRootScope: false,
                originSystem: 'AzureResources',
                originId: '/subscriptions/828b526f-c769-4b19-9797-734b4843b978/resourceGroups/rg'
            }
        };

await client.api('/identityGovernance/entitlementManagement/accessPackages/5f7f4c7d-b3f5-4988-a17b-3f09b6f5a9ee/accessPackageResourceRoleScopes')
	.version('beta')
	.post(accessPackageResourceRoleScope);

```