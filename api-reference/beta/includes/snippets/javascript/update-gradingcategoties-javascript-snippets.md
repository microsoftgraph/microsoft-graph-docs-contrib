---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationGradingCategory = {
    displayName: 'Quiz-1'
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070//assignmentSettings/gradingCategories/8bfb6d7f-8634-4f3b-9b6a-b6b6ff663f01')
	.version('beta')
	.update(educationGradingCategory);

```