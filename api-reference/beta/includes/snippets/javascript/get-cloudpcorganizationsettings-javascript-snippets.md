---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcOrganizationSettings = await client.api('/deviceManagement/virtualEndpoint/organizationSettings')
	.version('beta')
	.get();

```