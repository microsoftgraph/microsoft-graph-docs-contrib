---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamsAppInstallation = await client.api('/chats/19[d86ec7f6b247d3b9e519b0bfef5d03@thread.v2/installedApps/MTk6NWJkODZlYzdmNmIyNDdkM2I5ZTUxOWIwYmZlZjVkMDNAdGhyZWFkLnYyIyMyYjUyNGUyOC05NWNlLTRjOWItOTc3My00YTViZDZlYzE3NzA=')
	.version('beta')
	.select('consentedPermissionSet,id')
	.get();

```