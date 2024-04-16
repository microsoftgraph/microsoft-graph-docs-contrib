---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let subcategoryTemplate = await client.api('/security/labels/categories/82d00422-1f60-46cd-9809-33ca0b4d2286/subCategories/2ac39915-dbeb-e933-82e2-92b981835fa0')
	.version('beta')
	.get();

```