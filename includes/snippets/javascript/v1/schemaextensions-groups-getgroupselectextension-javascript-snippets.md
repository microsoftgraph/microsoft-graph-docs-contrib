---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groups = await client.api('/groups')
	.filter('graphlearn_courses/courseId eq \'123\'')
	.select('displayName,id,description,graphlearn_courses')
	.get();

```