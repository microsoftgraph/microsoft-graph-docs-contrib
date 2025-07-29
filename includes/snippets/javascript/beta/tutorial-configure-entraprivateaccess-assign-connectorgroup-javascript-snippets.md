---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const connectorGroup = {
  '@odata.id':'https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationproxy/connectorGroups/daf709c2-6072-414f-b08c-bb2a80c631c'
};

await client.api('/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83/connectorGroup/$ref')
	.version('beta')
	.put(connectorGroup);

```