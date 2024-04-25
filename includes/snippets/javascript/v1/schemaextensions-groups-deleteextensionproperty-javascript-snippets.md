---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
    bellowscollege_courses: null
};

await client.api('/groups/8fb45944-4085-449f-b95d-f7dd74a1b081')
	.update(group);

```