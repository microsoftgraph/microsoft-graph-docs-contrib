---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcCloudApp = {
  displayName: 'Remote Desktop Connection',
  discoveredAppName: 'Remote Desktop Connection',
  provisioningPolicyId: 'e31f75e9-25a8-41e9-a9d5-ce8fd484af15',
  description: '',
  appDetail: {
    '@odata.type': '#microsoft.graph.cloudPcFilePathAppDetail',
    filePath: 'C:\\Windows\\system32\\mstsc.exe',
    commandLineArguments: '',
    iconPath: 'C:\\Windows\\system32\\mstsc.exe',
    iconIndex: 0
  }
};

await client.api('/deviceManagement/virtualEndpoint/cloudApps')
	.version('beta')
	.post(cloudPcCloudApp);

```