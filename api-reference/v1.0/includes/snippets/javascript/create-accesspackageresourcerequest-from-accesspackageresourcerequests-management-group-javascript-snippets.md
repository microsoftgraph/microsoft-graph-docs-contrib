---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageResourceRequest = {
    requestType: 'adminAdd',
    resource: {
        displayName: 'test-mgmtgroup',
        description: 'test-mgmtgroup',
        resourceType: 'ManagementGroup',
        originId: '/providers/Microsoft.Management/managementGroups/test-mgmtgroup',
        originSystem: 'AzureResources'
    },
    catalog: {
        id: 'e8368470-afaf-44da-ba86-13a7318f1995'
    }
};

await client.api('/identityGovernance/entitlementManagement/resourceRequests')
	.post(accessPackageResourceRequest);

```