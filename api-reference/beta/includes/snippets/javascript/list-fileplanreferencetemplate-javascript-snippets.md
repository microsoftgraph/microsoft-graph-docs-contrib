---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let filePlanReferences = await client.api('/security/labels/filePlanReferences')
	.version('beta')
	.get();

```