---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceConfigurationDeviceStateSummary = await client.api('/deviceManagement/deviceConfigurationDeviceStateSummaries')
	.get();

```