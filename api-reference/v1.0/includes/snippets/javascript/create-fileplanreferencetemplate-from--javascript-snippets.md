---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const filePlanReferenceTemplate = {
  '@odata.type': '#microsoft.graph.security.filePlanReferenceTemplate',
  displayName: 'FIN 01-02-001',
};

await client.api('/security/labels/filePlanReferences')
	.post(filePlanReferenceTemplate);

```