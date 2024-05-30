---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationGradingCategory = {
    displayName: 'Test updated'
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/a5ca6dda-f220-43ca-81e4-02396b99f398')
	.update(educationGradingCategory);

```