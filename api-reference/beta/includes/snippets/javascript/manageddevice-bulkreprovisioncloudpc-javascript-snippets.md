---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcBulkRemoteActionResult = {
  managedDeviceIds: ['30d0e128-de93-41dc-89ec-33d84bb662a0', '7c82a3e3-9459-44e4-94d9-b92f93bf78dd'] 
};

await client.api('/deviceManagement/managedDevices/bulkReprovisionCloudPc')
	.version('beta')
	.post(cloudPcBulkRemoteActionResult);

```