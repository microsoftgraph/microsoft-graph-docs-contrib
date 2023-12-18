---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let windowsInformationProtectionNetworkLearningSummaries = await client.api('/deviceManagement/windowsInformationProtectionNetworkLearningSummaries')
	.get();

```