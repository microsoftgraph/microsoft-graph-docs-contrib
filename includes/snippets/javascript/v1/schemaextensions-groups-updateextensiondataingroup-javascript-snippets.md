---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
    bellowscollege_courses: {
        courseId: '123',
        courseName: 'New Managers',
        courseType: 'Hybrid'
    }
};

await client.api('/groups/dfc8016f-db97-4c47-a582-49cb8f849355')
	.update(group);

```