---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignment = {
};

await client.api('/education/classes/ce2cd7da-e41b-4e66-8390-c9251e4c3a40/assignments/f5e60dc1-d084-4ca4-a3b4-025f11023059/setUpResourcesFolder')
	.version('beta')
	.post(educationAssignment);

```