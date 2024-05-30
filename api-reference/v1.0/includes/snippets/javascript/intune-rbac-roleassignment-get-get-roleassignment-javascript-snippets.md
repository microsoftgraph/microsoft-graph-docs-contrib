---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleAssignment = await client.api('/deviceManagement/roleDefinitions/{roleDefinitionId}/roleAssignments/{roleAssignmentId}')
	.get();

```