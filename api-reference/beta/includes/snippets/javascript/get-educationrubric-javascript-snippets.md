---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationRubric = await client.api('/education/me/rubrics/bf040af7-a5ff-4abe-a8c8-1bdc532344c2')
	.version('beta')
	.get();

```