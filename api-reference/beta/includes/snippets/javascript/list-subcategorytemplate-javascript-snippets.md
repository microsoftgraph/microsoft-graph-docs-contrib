---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let subCategories = await client.api('/security/labels/retentionLabels/{retentionLabelId}/descriptors/categoryTemplate/subCategories')
	.version('beta')
	.get();

```