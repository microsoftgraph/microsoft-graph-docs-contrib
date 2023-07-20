---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let filePlanReferenceTemplate = await client.api('/security/labels/filePlanReferences/{filePlanReferenceTemplateId}')
	.version('beta')
	.get();

```