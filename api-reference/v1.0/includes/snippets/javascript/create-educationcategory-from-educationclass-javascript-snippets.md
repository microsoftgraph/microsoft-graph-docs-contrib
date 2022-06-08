---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationCategory = {
  displayName: 'Quizzes'
};

await client.api('/education/classes/60eaa744-aa87-4276-b985-1633683119f8/assignmentCategories')
	.post(educationCategory);

```