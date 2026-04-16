---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let followings = await client.api('/users/b3c29da7-ff83-4a92-b14e-7c91fe830b96/employeeExperience/storyline/followings')
	.version('beta')
	.get();

```