---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let targetedManagedAppConfiguration = await client.api('/deviceAppManagement/targetedManagedAppConfigurations/{targetedManagedAppConfigurationId}')
	.get();

```