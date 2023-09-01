---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mobileAppCategory = {
  '@odata.type': '#microsoft.graph.mobileAppCategory',
  displayName: 'Display Name value'
};

await client.api('/deviceAppManagement/mobileAppCategories/{mobileAppCategoryId}')
	.update(mobileAppCategory);

```