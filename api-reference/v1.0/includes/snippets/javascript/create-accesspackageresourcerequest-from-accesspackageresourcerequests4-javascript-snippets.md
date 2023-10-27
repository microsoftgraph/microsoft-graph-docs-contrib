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
    displayName: 'Test group',
    originId: '8ab659d0-3839-427d-8c54-5ae92f0b3e2e',
    originSystem: 'AadGroup'
  },
  catalog: {
    id: 'beedadfe-01d5-4025-910b-84abb9369997'
  }
};

await client.api('/identityGovernance/entitlementManagement/resourceRequests')
	.post(accessPackageResourceRequest);

```