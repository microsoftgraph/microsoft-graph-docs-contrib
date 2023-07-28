---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const managedAppOperation = {
  '@odata.type': '#microsoft.graph.managedAppOperation',
  displayName: 'Display Name value',
  state: 'State value',
  version: 'Version value'
};

await client.api('/deviceAppManagement/managedAppRegistrations/{managedAppRegistrationId}/operations/{managedAppOperationId}')
	.update(managedAppOperation);

```