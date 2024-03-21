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
    originId: 'e81d7f57-0840-45e1-894b-f505c1bdcc1f',
    originSystem: 'AadApplication'
  },
  catalog: {
    id: 'beedadfe-01d5-4025-910b-84abb9369997'
  }
};

await client.api('/identityGovernance/entitlementManagement/resourceRequests')
	.post(accessPackageResourceRequest);

```