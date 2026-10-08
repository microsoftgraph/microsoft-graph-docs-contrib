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
        displayName: 'Dev',
        description: 'Dev',
        resourceType: 'Subscription',
        originId: '/subscriptions/828b526f-c769-4b19-9797-734b4843b978',
        originSystem: 'AzureResources'
    },
    catalog: {
        id: 'e8368470-afaf-44da-ba86-13a7318f1995'
    }
};

await client.api('/identityGovernance/entitlementManagement/resourceRequests')
	.post(accessPackageResourceRequest);

```