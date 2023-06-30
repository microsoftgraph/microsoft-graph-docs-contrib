---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const managedEBookAssignment = {
  '@odata.type': '#microsoft.graph.managedEBookAssignment',
  target: {
    '@odata.type': 'microsoft.graph.allLicensedUsersAssignmentTarget'
  },
  installIntent: 'required'
};

await client.api('/deviceAppManagement/managedEBooks/{managedEBookId}/assignments')
	.post(managedEBookAssignment);

```