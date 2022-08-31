---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignment = {
    displayName: 'Reading and review test 09.03 #5',
    instructions: {
        contentType: 'text',
        content: 'Read chapter 5 and write your review'
    },
    dueDateTime: '2021-09-10T00:00:00Z',
    addedStudentAction: 'none'
};

await client.api('/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/4679bc1b-90c5-45af-ae1a-d5357672ed39')
	.update(educationAssignment);

```