---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcCloudApp = {
  '@odata.type': '#microsoft.graph.cloudPcCloudApp',
  displayName: 'Cloud App example3',
  appDetail: {
    iconPath: 'C:\\Windows\\system32\\WindowsPowerShell\\v1.0\\powershell_ise.exe'
  }
};

await client.api('/deviceManagement/virtualEndpoint/cloudApps/40d0e128-de93-41dc-89ec-33d84bb662a0')
	.version('beta')
	.update(cloudPcCloudApp);

```