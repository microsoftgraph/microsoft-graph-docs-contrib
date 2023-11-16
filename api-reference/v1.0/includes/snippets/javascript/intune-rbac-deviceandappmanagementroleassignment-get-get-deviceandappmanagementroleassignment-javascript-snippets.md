---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceAndAppManagementRoleAssignment = await client.api('/deviceManagement/roleAssignments/{deviceAndAppManagementRoleAssignmentId}')
	.get();

```