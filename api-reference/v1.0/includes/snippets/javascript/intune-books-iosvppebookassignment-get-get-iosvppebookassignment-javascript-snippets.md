---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managedEBookAssignment = await client.api('/deviceAppManagement/managedEBooks/{managedEBookId}/assignments/{managedEBookAssignmentId}')
	.get();

```