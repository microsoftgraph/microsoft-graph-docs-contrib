---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sharepointSettings = await client.api('/admin/sharepoint/settings')
	.version('beta')
	.get();

```