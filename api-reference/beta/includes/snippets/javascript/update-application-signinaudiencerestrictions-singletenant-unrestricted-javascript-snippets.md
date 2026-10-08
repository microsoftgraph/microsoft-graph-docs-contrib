---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
  signInAudience: 'AzureADMyOrg',
  signInAudienceRestrictions: {
    '@odata.type': '#microsoft.graph.unrestrictedAudience'
  }
};

await client.api('/applications/{id}')
	.version('beta')
	.update(application);

```