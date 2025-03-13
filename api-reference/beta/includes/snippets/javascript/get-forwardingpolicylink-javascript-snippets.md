---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policyLink = await client.api('/networkAccess/forwardingProfiles/{profileId}/policies/{forwardingPolicyLinkId}')
	.version('beta')
	.get();

```