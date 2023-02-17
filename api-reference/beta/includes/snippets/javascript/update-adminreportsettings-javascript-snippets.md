---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const adminReportSettings = {
  displayConcealedNames: true
};

await client.api('/admin/reportSettings')
	.version('beta')
	.update(adminReportSettings);

```