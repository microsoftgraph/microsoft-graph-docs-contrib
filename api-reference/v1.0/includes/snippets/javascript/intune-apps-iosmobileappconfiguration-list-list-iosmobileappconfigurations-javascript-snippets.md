---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mobileAppConfigurations = await client.api('/deviceAppManagement/mobileAppConfigurations')
	.get();

```