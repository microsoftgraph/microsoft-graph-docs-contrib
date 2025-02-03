---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const connectorGroup = {
  '@odata.id':'https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/daf709c2-6072-414f-b08c-bb2a80c631c'
};

await client.api('/onPremisesPublishingProfiles/applicationProxy/connectors/27049d40-6e0a-4c53-a171-daada6e9c8a0/memberOf/$ref')
	.version('beta')
	.post(connectorGroup);

```