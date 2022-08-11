---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignment = {
    dueDateTime: '2021-09-07T00:00:00Z',
    displayName: 'Reading test 09.03 #4',
    instructions: {
        contentType: 'text',
        content: 'Read chapter 4'
    },
    grading: {
        '@odata.type': '#microsoft.graph.educationAssignmentGradeType',
        maxPoints: 50
    },
    assignTo: {
        '@odata.type': '#microsoft.graph.educationAssignmentGradeType'
    },
    status: 'draft',
    allowStudentsToAddResourcesToSubmission: true
};

await client.api('/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments')
	.version('beta')
	.post(educationAssignment);

```