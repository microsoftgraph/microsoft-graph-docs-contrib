---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const policyLink = {
  '@odata.type': '#microsoft.graph.networkaccess.forwardingPolicyLink',
  state: 'enabled'  
};

await client.api('/networkAccess/forwardingProfiles/{forwardingProfile_id}/policies/{policy_id}')
	.version('beta')
	.update(policyLink);

```