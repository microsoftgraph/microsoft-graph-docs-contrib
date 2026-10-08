---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unfollow = {};

await client.api('/users/f2a84916-d735-41d9-a04a-4ecf6266ae71/employeeExperience/storyline/unfollow')
	.version('beta')
	.post(unfollow);

```