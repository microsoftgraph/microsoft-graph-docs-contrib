---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let departments = await client.api('/security/labels/departments')
	.version('beta')
	.get();

```