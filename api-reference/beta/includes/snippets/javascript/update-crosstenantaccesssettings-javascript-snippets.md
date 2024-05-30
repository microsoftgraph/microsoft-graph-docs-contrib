---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const crossTenantAccessSettings = {
    '@odata.type': '#microsoft.graph.networkaccess.crossTenantAccessSettings',
    networkPacketTaggingStatus: 'enabled'
};

await client.api('/networkAccess/settings/crossTenantAccess')
	.version('beta')
	.update(crossTenantAccessSettings);

```