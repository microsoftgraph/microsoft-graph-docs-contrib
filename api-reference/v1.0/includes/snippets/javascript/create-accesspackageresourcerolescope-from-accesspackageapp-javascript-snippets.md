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
        id: 'cde82ecb-e461-496b-98fb-4f807c7ca640',
        displayName: 'Standard User',
        description: 'Standard User',
        originSystem: 'AadApplication',
        originId: 'a29a7690-b3c4-4ed5-96c6-f640cde06fb8',
        resource: {
            id: '5f80c0c7-a180-4521-b585-18200048a0d8',
            originId: 'e81d7f57-0840-45e1-894b-f505c1bdcc1f',
            originSystem: 'AadApplication'
        }
    },
    scope: {
        id: 'dbeb8772-9907-4e95-a28e-a8d70dbcda69',
        originId: 'e81d7f57-0840-45e1-894b-f505c1bdcc1f',
        originSystem: 'AadApplication',
        isRootScope: true
    }
};

await client.api('/identityGovernance/entitlementManagement/accessPackages/cdd5f06b-752a-4c9f-97a6-82f4eda6c76d/resourceRoleScopes')
	.post(accessPackageResourceRoleScope);

```