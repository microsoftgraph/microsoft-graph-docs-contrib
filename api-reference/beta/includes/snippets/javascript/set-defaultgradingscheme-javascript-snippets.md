---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationGradingScheme = {
    displayName: 'New name 02',
    grades: [
        {
            displayName: 'Only grade',
            minPercentage: 0
        }
    ]
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingSchemes')
	.version('beta')
	.post(educationGradingScheme);

```