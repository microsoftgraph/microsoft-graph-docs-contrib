---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let filePlanReferenceTemplate = await client.api('/security/labels/filePlanReferences/b1f7b518-a44f-1d4b-c6f1-ab8771d3907c')
	.version('beta')
	.get();

```