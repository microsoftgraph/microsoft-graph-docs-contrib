---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const governanceRequest = {
  governedTenantId: 'bbbbcccc-1111-dddd-2222-eeee3333ffff',
  'governancePolicyTemplate@odata.bind': 'https://graph.microsoft.com/beta/directory/tenantGovernance/governancePolicyTemplates/d3d3d3d3-eeee-ffff-aaaa-b4b4b4b4b4b4'
};

await client.api('/directory/tenantGovernance/governanceRequests')
	.version('beta')
	.post(governanceRequest);

```