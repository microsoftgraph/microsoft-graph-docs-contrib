---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let windowsInformationProtectionAppLearningSummaries = await client.api('/deviceManagement/windowsInformationProtectionAppLearningSummaries')
	.get();

```