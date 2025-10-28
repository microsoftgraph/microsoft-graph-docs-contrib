---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managedLicenses = await client.api('/deviceManagement/virtualEndpoint/managedLicenses')
	.version('beta')
	.get();

```