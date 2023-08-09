---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getUserIdsWithFlaggedAppRegistration = await client.api('/deviceAppManagement/managedAppRegistrations/getUserIdsWithFlaggedAppRegistration')
	.get();

```