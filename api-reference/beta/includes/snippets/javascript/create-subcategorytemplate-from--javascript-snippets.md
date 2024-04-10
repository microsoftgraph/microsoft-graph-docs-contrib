---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subcategoryTemplate = {
  '@odata.type': '#microsoft.graph.security.subCategoryTemplate',
  displayName: 'Vendor Invoice',
};

await client.api('/security/labels/categories/{categoryTemplateId}/subCategories')
	.version('beta')
	.post(subcategoryTemplate);

```