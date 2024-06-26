---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignments = await client.api('/education/me/assignments')
	.version('beta')
	.filter('dueDateTime eq 2050-05-18T17:00:00Z')
	.get();

```