---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let endUserNotifications = await client.api('/security/attackSimulation/endUserNotifications')
	.filter('source eq \'global\'')
	.get();

```