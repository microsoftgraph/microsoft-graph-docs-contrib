---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceManagementReports = await client.api('/deviceManagement/reports')
	.get();

```