---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let installedApps = await client.api('/chats/19[d86ec7f6b247d3b9e519b0bfef5d03@thread.v2/installedApps')
	.version('beta')
	.select('consentedPermissionSet,id')
	.get();

```