---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applePushNotificationCertificate = await client.api('/deviceManagement/applePushNotificationCertificate')
	.get();

```