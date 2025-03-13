---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let learningProviders = await client.api('/employeeExperience/learningProviders')
	.get();

```