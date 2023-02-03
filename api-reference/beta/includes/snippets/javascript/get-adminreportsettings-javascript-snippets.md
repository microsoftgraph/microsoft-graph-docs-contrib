---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let adminReportSettings = await client.api('/admin/reportSettings')
	.version('beta')
	.get();

```