---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permissionGrantPreApprovalPolicy = {
    conditions: [
        {
            scopeType: 'group',
            sensitivityLabels: {
                '@odata.type': '#microsoft.graph.allScopeSensitivityLabels',
                labelKind: 'all'
            },
            permissions: {
                '@odata.type': '#microsoft.graph.allPermissionsOnResourceApp',
                permissionKind: 'allPermissionsOnResourceApp',
                permissionType: 'application',
                resourceApplicationId: '00000003-0000-0000-c000-000000000000'
            }
        }
    ]
};

await client.api('/policies/permissionGrantPreApprovalPolicies')
	.version('beta')
	.post(permissionGrantPreApprovalPolicy);

```