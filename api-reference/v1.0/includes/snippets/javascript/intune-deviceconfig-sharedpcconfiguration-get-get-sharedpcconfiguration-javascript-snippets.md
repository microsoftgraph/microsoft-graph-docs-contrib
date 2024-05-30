---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceConfiguration = await client.api('/deviceManagement/deviceConfigurations/{deviceConfigurationId}')
	.get();

```