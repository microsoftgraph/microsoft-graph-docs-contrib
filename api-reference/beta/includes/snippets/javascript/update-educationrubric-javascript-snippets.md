---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationRubric = {
  displayName: 'Example Credit Rubric after display name patch'
};

await client.api('/education/me/rubrics/5f650796-a600-4d20-87ef-c46ae34da3bb')
	.version('beta')
	.update(educationRubric);

```