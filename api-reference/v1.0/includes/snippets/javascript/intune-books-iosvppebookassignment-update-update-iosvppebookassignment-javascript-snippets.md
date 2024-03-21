---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const managedEBookAssignment = {
  '@odata.type': '#microsoft.graph.iosVppEBookAssignment',
  target: {
    '@odata.type': 'microsoft.graph.deviceAndAppManagementAssignmentTarget'
  },
  installIntent: 'required'
};

await client.api('/deviceAppManagement/managedEBooks/{managedEBookId}/assignments/{managedEBookAssignmentId}')
	.update(managedEBookAssignment);

```