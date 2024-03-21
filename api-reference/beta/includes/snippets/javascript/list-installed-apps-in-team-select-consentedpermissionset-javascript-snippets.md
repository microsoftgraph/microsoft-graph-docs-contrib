---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let installedApps = await client.api('/teams/7eeb5a95-f602-4861-ab67-49714fa5a020/installedApps')
	.version('beta')
	.select('consentedPermissionSet,id')
	.get();

```