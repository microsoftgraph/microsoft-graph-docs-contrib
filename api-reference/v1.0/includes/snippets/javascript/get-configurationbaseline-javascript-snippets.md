---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let configurationBaseline = await client.api('/admin/configurationManagement/configurationMonitors/b86049ce-0180-404e-803a-5616d49290d7/baseline')
	.get();

```