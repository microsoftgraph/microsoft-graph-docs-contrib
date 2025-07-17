---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const copilotAdminLimitedMode = {
  '@odata.type': '#microsoft.graph.copilotAdminLimitedMode',
  isEnabledForGroup: true,
  groupId: '4c563cdf-0efa-44c5-a384-dbf57db277df'
};

await client.api('/copilot/admin/settings/limitedMode')
	.version('beta')
	.update(copilotAdminLimitedMode);

```