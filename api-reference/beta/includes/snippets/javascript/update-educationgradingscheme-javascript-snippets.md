---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationGradingScheme = {
    displayName: 'New GradingScheme name'
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingschemes/d0c2769f-cd0f-4e30-8d1d-9312270de5c4')
	.version('beta')
	.update(educationGradingScheme);

```