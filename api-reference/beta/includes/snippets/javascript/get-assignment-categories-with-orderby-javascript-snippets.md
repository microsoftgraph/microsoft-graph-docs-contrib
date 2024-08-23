---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let categories = await client.api('/education/classes/77c30802-3e00-4e91-975f-f2aaa2c5a569/assignments/c3307ea8-1343-4109-aeb9-92b9a74bf131/categories')
	.version('beta')
	.orderby('id')
	.get();

```