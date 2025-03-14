---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationCategory = {
  '@odata.id': 'https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentCategories/39e3d9dc-7244-42d7-8b4d-1071aae5eb41'
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/70b7077c-7c1c-4e56-9b3b-2365411900c6/categories/$ref')
	.version('beta')
	.post(educationCategory);

```