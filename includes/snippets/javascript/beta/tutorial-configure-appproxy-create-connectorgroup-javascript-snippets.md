---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const connectorGroup = {
  name: 'IWA Demo Connector Group'
};

await client.api('/onPremisesPublishingProfiles/applicationProxy/connectorGroups')
	.version('beta')
	.post(connectorGroup);

```