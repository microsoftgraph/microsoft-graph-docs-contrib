---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const controlConfiguration = {
  '@odata.type': '#microsoft.graph.endUserSettings',
  relatedPeopleInsightLevel: 'countAndNames',
  showApproverDetailsToMembers: true
};

await client.api('/identityGovernance/entitlementManagement/controlConfigurations/endUserSettings')
	.version('beta')
	.put(controlConfiguration);

```