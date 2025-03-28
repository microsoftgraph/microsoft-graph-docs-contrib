---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPCs = await client.api('/deviceManagement/virtualEndpoint/cloudPCs')
	.version('beta')
	.filter('productType eq \'enterprise\'')
	.select('id,displayName,productType')
	.get();

```