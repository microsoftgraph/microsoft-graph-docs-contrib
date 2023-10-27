---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/0bcb37af-3676-47ef-ae93-8de22ce5ff1d/gradingCategory/$ref')
	.version('beta')
	.delete();

```