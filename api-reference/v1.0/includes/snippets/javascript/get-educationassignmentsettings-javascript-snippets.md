---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationAssignmentSettings = await client.api('/education/classes/f4a941ff-9da6-4707-ba5b-0eae93cad0b4/assignmentsettings')
	.get();

```