---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const policyLink = {
  '@odata.type': '#microsoft.graph.networkaccess.threatIntelligencePolicyLink',
  state: 'String',
  version: 'String'
};

await client.api('/networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}')
	.version('beta')
	.update(policyLink);

```