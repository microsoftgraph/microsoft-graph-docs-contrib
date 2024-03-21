---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subCategoryTemplate = {
  '@odata.type': '#microsoft.graph.security.subCategoryTemplate',
  displayName: 'String',
  createdBy: {
    '@odata.type': 'microsoft.graph.identitySet'
  }
};

await client.api('/security/labels/retentionLabels/{retentionLabelId}/descriptors/categoryTemplate/subCategories')
	.version('beta')
	.post(subCategoryTemplate);

```