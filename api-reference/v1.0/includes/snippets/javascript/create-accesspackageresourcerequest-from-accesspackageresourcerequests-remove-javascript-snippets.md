---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageResourceRequest = {
  requestType: 'adminRemove',
  resource: {
    id: '1d0bb962-5bb0-4b16-a488-fda7a788b9ec'
  },
  catalog: {
    id: 'beedadfe-01d5-4025-910b-84abb9369997'
  }
};

await client.api('/identityGovernance/entitlementManagement/resourceRequests')
	.post(accessPackageResourceRequest);

```