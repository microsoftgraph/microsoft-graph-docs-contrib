---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceConfigurationDeviceOverview = await client.api('/deviceManagement/deviceConfigurations/{deviceConfigurationId}/deviceStatusOverview')
	.get();

```