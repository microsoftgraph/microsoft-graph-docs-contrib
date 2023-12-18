---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const organization = {
  '@odata.type': '#microsoft.graph.organization',
  mobileDeviceManagementAuthority: 'intune'
};

await client.api('/organization/{organizationId}')
	.update(organization);

```