---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const governanceRequest = {
  status: 'accepted'
};

await client.api('/directory/tenantGovernance/governanceRequests/aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb')
	.version('beta')
	.update(governanceRequest);

```