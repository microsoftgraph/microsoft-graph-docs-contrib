---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const controlConfiguration = {
  '@odata.type': '#microsoft.graph.insiderRiskyUserApproval',
  id: 'insiderRiskyUserApproval',
  isApprovalRequired: true,
  minimumRiskLevel: 'elevated'
};

await client.api('/identityGovernance/entitlementManagement/controlConfigurations/insiderRiskyUserApproval')
	.version('beta')
	.put(controlConfiguration);

```