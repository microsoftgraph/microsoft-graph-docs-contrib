---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const outboundProvisioningFlowSet = {
   '@odata.type': '#microsoft.graph.industryData.outboundProvisioningFlowSet',
   displayName: 'Outbound provisioning flow Updated'
};

await client.api('/external/industryData/OutboundProvisioningFlowSets/8ac3c08f-6f93-465b-4bd9-08dc4ac773d0')
	.version('beta')
	.update(outboundProvisioningFlowSet);

```