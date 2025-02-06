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
  isEnabledForGroup: 'Boolean',
  groupId: 'String'
};

await client.api('/copilot/admin/settings/limitedMode')
	.version('beta')
	.update(copilotAdminLimitedMode);

```