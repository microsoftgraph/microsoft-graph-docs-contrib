---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let emailNotificationsSetting = await client.api('/solutions/backupRestore/emailNotificationsSetting')
	.version('beta')
	.get();

```