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
    originId: 'https://microsoft.sharepoint.com/sites/Example',
    originSystem: 'SharePointOnline'
  },
  catalog: {
    id: 'beedadfe-01d5-4025-910b-84abb9369997'
  }
};

await client.api('/identityGovernance/entitlementManagement/resourceRequests')
	.post(accessPackageResourceRequest);

```