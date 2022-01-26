---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceCompliancePolicySettingStateSummaries = await client.api('/tenantRelationships/managedTenants/deviceCompliancePolicySettingStateSummaries')
	.version('beta')
	.get();

```