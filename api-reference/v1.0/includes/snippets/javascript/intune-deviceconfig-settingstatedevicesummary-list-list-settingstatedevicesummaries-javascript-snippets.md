---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceSettingStateSummaries = await client.api('/deviceManagement/deviceConfigurations/{deviceConfigurationId}/deviceSettingStateSummaries')
	.get();

```