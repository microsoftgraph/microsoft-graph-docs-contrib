---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
    ext55gb1l09_msLearnCourses: {
        courseType: 'Admin'
    }
};

await client.api('/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e')
	.version('beta')
	.update(user);

```