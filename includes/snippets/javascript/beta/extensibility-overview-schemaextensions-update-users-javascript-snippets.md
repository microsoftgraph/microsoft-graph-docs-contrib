---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
    extkmpdyld2_graphLearnCourses: {
        courseType: 'Instructor-led',
        courseId: null
    }
};

await client.api('/users/0668e673-908b-44ea-861d-0661297e1a3e')
	.version('beta')
	.update(user);

```