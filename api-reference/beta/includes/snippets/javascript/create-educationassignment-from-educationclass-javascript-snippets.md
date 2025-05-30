---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignment = {
    dueDateTime: '2025-09-16T00:00:00Z',
    displayName: 'Reading test 09.14',
    languageTag: 'es-MX',
    instructions: {
        contentType: 'text',
        content: 'Read chapter 4'
    },
    grading: {
        '@odata.type': '#microsoft.graph.educationAssignmentPointsGradeType',
        maxPoints: 50
    },
    assignTo: {
        '@odata.type': '#microsoft.graph.educationAssignmentClassRecipient'
    },
    status: 'draft',
    allowStudentsToAddResourcesToSubmission: true
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments')
	.version('beta')
	.post(educationAssignment);

```