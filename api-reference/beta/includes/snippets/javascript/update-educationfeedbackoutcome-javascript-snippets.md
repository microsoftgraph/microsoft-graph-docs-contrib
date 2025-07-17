---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationOutcome = {
    '@odata.type':'#microsoft.graph.educationFeedbackOutcome',
    feedback: {
        text: {
            content: 'This is feedback for the assignment as a whole.',
            contentType: 'text'
        }
    }
};

await client.api('/education/classes/bf1f1963-05f6-4cba-903c-5892b4ce3bd7/assignments/db8e6b0b-dba4-4c69-81b2-9ba7313c0b7a/submissions/4bca096a-7de3-8675-5e86-2fa149923860/outcomes/ca05367a-b292-42d5-aff7-5d279feeace8')
	.version('beta')
	.update(educationOutcome);

```