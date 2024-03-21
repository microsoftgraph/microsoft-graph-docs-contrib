---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const windowsInformationProtectionAppLearningSummary = {
  '@odata.type': '#microsoft.graph.windowsInformationProtectionAppLearningSummary',
  applicationName: 'Application Name value',
  applicationType: 'desktop',
  deviceCount: 11
};

await client.api('/deviceManagement/windowsInformationProtectionAppLearningSummaries')
	.post(windowsInformationProtectionAppLearningSummary);

```