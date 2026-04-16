---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let configurationMonitors = await client.api('/admin/configurationManagement/configurationMonitors')
	.get();

```