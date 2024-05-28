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
    createBasedOnOrgPlusroleGroup: true
  }
};

await client.api('/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows')
	.version('beta')
	.post(provisioningFlow);

```