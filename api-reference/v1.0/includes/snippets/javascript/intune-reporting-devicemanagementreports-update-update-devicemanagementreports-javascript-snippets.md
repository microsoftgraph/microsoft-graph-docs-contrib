---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceManagementReports = {
  '@odata.type': '#microsoft.graph.deviceManagementReports'
};

await client.api('/deviceManagement/reports')
	.update(deviceManagementReports);

```