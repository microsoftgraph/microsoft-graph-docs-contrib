---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const gradingSchemes = {
    '@context': '#$delta',
    value: [
        {
            id: 'e445acb2-145e-466f-a070-f677d4178f93',
            displayName: 'New Pass - fail Scheme created',
            hidePointsDuringGrading: true
        },
        {
            displayName: 'New Qualitative Scheme',
            grades: [
                {
                    displayName: 'Great',
                    minPercentage: 82
                },
                {
                    displayName: 'Good',
                    minPercentage: 70
                },
                {
                    displayName: 'Okay',
                    minPercentage: 0
                }
            ]
        },        
        {
            '@removed': {
                reason: 'deleted'
            },
            id: 'd99ee8a9-a3f2-4f93-9183-4d86b8d4930b'
        }
    ]
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingschemes/')
	.version('beta')
	.update(gradingSchemes);

```