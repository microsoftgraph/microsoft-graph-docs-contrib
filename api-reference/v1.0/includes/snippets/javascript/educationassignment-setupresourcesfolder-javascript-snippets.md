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

await client.api('/education/classes/955e0bd5-52c2-41ad-b7e8-5b33a18c5e78/assignments/18d17255-3278-49fb-8da7-d095b7f610c4/setUpResourcesFolder')
	.post(educationAssignment);

```