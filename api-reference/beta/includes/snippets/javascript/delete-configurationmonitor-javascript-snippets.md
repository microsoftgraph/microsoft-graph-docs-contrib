---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/admin/configurationManagement/configurationMonitors/1bc248ae-a088-434d-a466-9930e533f7dd')
	.version('beta')
	.delete();

```