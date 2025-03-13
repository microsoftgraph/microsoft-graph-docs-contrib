---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let profileCardProperty = await client.api('/admin/people/profileCardProperties/CustomAttribute1')
	.get();

```