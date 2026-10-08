---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const controlConfiguration = {
  '@odata.type': '#microsoft.graph.entraIdProtectionRiskyUserApproval',
  id: 'EntraIdProtectionRiskyUserApproval',
  isApprovalRequired: true,
  minimumRiskLevel: 'medium'
};

await client.api('/identityGovernance/entitlementManagement/controlConfigurations/entraIdProtectionRiskyUserApproval')
	.version('beta')
	.put(controlConfiguration);

```