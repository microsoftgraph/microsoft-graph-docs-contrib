---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedRbacResourceAction = await client.api('/roleManagement/directory/resourceNamespaces/microsoft.directory/resourceActions/microsoft.directory-accessReviews-allProperties-read-get')
	.version('beta')
	.get();

```