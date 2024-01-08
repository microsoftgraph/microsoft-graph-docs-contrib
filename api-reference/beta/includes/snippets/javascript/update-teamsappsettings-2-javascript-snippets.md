---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamsAppSettings = {
  '@odata.type': '#microsoft.graph.teamsAppSettings',
  allowUserRequestsForAppAccess: 'true'
};

await client.api('/teamwork/teamsAppSettings')
	.version('beta')
	.update(teamsAppSettings);

```