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
  displayName: 'String',
  createdBy: {
    '@odata.type': 'microsoft.graph.identitySet'
  }
};

await client.api('/security/labels/filePlanReferences')
	.version('beta')
	.post(filePlanReferenceTemplate);

```