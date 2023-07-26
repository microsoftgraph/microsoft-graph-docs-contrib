---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const windowsInformationProtectionNetworkLearningSummary = {
  '@odata.type': '#microsoft.graph.windowsInformationProtectionNetworkLearningSummary',
  url: 'Url value',
  deviceCount: 11
};

await client.api('/deviceManagement/windowsInformationProtectionNetworkLearningSummaries')
	.post(windowsInformationProtectionNetworkLearningSummary);

```