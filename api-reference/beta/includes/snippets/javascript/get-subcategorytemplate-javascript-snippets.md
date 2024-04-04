---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let subcategoryTemplate = await client.api('/security/labels/retentionLabels/{retentionLabelId}/descriptors/categoryTemplate/subCategories/{subCategoryTemplateId}')
	.version('beta')
	.get();

```