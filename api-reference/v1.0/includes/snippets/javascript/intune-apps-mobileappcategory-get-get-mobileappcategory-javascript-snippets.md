---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mobileAppCategory = await client.api('/deviceAppManagement/mobileAppCategories/{mobileAppCategoryId}')
	.get();

```