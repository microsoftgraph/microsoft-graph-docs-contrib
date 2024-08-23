---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignmentCategories = await client.api('/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignmentCategories')
	.orderby('displayName')
	.get();

```