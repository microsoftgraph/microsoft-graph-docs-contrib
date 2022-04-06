---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationAssignmentDefaults = await client.api('/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignmentDefaults')
	.get();

```