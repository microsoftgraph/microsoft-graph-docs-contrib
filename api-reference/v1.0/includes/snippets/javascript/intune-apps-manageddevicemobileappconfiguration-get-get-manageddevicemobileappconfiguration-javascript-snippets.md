---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managedDeviceMobileAppConfiguration = await client.api('/deviceAppManagement/mobileAppConfigurations/{managedDeviceMobileAppConfigurationId}')
	.get();

```