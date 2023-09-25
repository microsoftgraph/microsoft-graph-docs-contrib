---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignmentSettings = {
  gradingCategories: [
        {           
            displayName: 'Lab',
            percentageWeight: 10
        },
        {
            displayName: 'Homework',
            percentageWeight: 80
        },
        {
            displayName: 'Test',
            percentageWeight: 10
        }
    ]
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings')
	.version('beta')
	.update(educationAssignmentSettings);

```