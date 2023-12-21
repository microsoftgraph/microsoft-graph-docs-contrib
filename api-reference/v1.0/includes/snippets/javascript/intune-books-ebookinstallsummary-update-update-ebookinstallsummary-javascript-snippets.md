---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const eBookInstallSummary = {
  '@odata.type': '#microsoft.graph.eBookInstallSummary',
  installedDeviceCount: 4,
  failedDeviceCount: 1,
  notInstalledDeviceCount: 7,
  installedUserCount: 2,
  failedUserCount: 15,
  notInstalledUserCount: 5
};

await client.api('/deviceAppManagement/managedEBooks/{managedEBookId}/installSummary')
	.update(eBookInstallSummary);

```