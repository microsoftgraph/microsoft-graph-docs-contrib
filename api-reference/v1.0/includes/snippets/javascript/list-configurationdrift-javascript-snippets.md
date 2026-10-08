---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let configurationDrifts = await client.api('/admin/configurationManagement/configurationDrifts')
	.get();

```