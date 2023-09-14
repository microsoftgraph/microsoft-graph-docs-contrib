---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const categoryTemplate = {
  '@odata.type': '#microsoft.graph.security.categoryTemplate',
  displayName: 'String',
  createdBy: {
    '@odata.type': 'microsoft.graph.identitySet'
  }
};

await client.api('/security/labels/categories')
	.version('beta')
	.post(categoryTemplate);

```