---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignment = {
  dueDateTime: '2014-02-01T00:00:00Z',
  displayName: 'Midterm 1',
    instructions: {
      contentType: 'text',
      content: 'Read chapters 1 through 3'
    },
      grading: {
        '@odata.type': '#microsoft.graph.educationAssignmentPointsGradeType',
        maxPoints: 100
      },
      assignTo: {
        '@odata.type': '#microsoft.graph.educationAssignmentClassRecipient'
      },
      status: 'draft',
      allowStudentsToAddResourcesToSubmission: true
};

await client.api('/education/classes/8b8cec7f-d0d8-4974-982a-e29396ddbe7f/assignments')
	.version('beta')
	.post(educationAssignment);

```