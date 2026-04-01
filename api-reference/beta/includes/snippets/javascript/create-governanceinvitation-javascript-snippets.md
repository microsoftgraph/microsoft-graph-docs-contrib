---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const governanceInvitation = {
  governingTenantId: 'aaaabbbb-0000-cccc-1111-dddd2222eeee'
};

await client.api('/directory/tenantGovernance/governanceInvitations')
	.version('beta')
	.post(governanceInvitation);

```