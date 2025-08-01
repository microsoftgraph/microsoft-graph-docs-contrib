---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationOutcome = {
    '@odata.type':'#microsoft.graph.educationPointsOutcome',
    points: {
        '@odata.type':'#microsoft.graph.educationAssignmentPointsGrade',
        points: 85.5
    }
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/0965958c-84f2-4ca4-b854-05cce3440aa4/submissions/fbf5605c-eba9-ccfb-d66c-afbd161dac41/outcomes/ea1351f6-ba33-4940-b2cb-6a7254af2dc8')
	.version('beta')
	.update(educationOutcome);

```