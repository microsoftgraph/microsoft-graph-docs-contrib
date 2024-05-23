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
    displayName: 'Outbound Provisioning Flow Test',
    filter: {
        '@odata.type': '#microsoft.graph.industryData.basicFilter',
        attribute: 'orgExternalId',
        in: [
            'Quarter',
            'Demo'
        ]
    }
};

await client.api('/external/industryData/OutboundProvisioningFlowSets')
	.version('beta')
	.post(outboundProvisioningFlowSet);

```