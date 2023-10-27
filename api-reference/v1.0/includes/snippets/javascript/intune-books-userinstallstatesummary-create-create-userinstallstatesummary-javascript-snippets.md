---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userInstallStateSummary = {
  '@odata.type': '#microsoft.graph.userInstallStateSummary',
  userName: 'User Name value',
  installedDeviceCount: 4,
  failedDeviceCount: 1,
  notInstalledDeviceCount: 7
};

await client.api('/deviceAppManagement/managedEBooks/{managedEBookId}/userStateSummary')
	.post(userInstallStateSummary);

```