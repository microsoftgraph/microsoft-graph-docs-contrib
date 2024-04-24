---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let departmentTemplate = await client.api('/security/labels/departments/11b44677-9f06-c85a-4a0b-766b66904bf8')
	.version('beta')
	.get();

```