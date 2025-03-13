---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groups = await client.api('/groups')
	.filter('bellowscollege_courses/courseId eq \'123\'')
	.select('displayName,id,description,bellowscollege_courses')
	.get();

```