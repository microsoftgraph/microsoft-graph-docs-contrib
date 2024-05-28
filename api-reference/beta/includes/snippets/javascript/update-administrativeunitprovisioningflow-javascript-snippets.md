---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const provisioningFlow = {
  '@odata.type': '#microsoft.graph.industryData.administrativeUnitProvisioningFlow',
  creationOptions: 
  {
    createBasedOnOrg: true,
    createBasedOnOrgPlusroleGroup: false
  }
};

await client.api('/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows/f66e97ad-0870-46e0-3ff3-08dc49dccdc9')
	.version('beta')
	.update(provisioningFlow);

```