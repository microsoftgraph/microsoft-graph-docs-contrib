---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let user = await client.api('/users/0668e673-908b-44ea-861d-0661297e1a3e')
	.version('beta')
	.select('id,displayName,extkmpdyld2_graphLearnCourses')
	.get();

```