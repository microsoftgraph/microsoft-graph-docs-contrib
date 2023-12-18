---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let departmentTemplate = await client.api('/security/labels/departments/{departmentTemplateId}')
	.version('beta')
	.get();

```