---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignmentSettings = {
    'gradingCategories@delta': [
        {
            // Change this grading category\'s name
            id: '03bd9196-ce2e-41bd-902f-df9ae02de4db',
            displayName: 'Lab Updated'
        },
        {
            // Delete this grading category 
            '@odata.context': 'https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity',
            id: '109e5d73-3ef7-42a5-88d8-7e30cdb85f06',
            reason: 'deleted'
        },
        {
            // Add a new grading category 
            displayName: 'New Homework',
            percentageWeight: 50
        }
    ]
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings')
	.update(educationAssignmentSettings);

```