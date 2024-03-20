---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignmentSettings = {
    gradingSchemes: [
        {
            displayName: 'Pass/fail',
            grades: [
                {
                    displayName: 'Pass',
                    minPercentage: 60,
                    defaultPercentage: 100
                },
                {
                    displayName: 'Fail',
                    minPercentage: 0,
                    defaultPercentage: 0
                }
            ]
        },
        {
            displayName: 'Letters',
            grades: [
                {
                    displayName: 'A',
                    minPercentage: 90
                },
                {
                    displayName: 'B',
                    minPercentage: 80
                },
                {
                    displayName: 'C',
                    minPercentage: 70
                },
                {
                    displayName: 'D',
                    minPercentage: 60
                },
                {
                    displayName: 'F',
                    minPercentage: 0
                }
            ]
        }
    ]
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings')
	.version('beta')
	.update(educationAssignmentSettings);

```