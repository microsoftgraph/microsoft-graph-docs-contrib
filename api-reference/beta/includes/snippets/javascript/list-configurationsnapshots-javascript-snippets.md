---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let configurationSnapshots = await client.api('/admin/configurationManagement/configurationSnapshots')
	.version('beta')
	.get();

```