---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcPool = {
  '@odata.type':'#microsoft.graph.cloudPcAgentPool',
  displayName: 'Contoso Development Pool',
  cloudPcConfiguration: {
    imageId: 'microsoftwindowsdesktop_windows-ent-cpc_win11-23h2-ent-cpc-m365',
    imageType: 'gallery',
    osLocale: 'en-US'
  },
  networkConfiguration: {
    '@odata.type': '#microsoft.graph.cloudPcMicrosoftHostedNetworkConfiguration',
    geographicLocationType: 'usWest',
    regionGroups: [
      {
        regionGroup: 'usWest',
        regions: ['westus2', 'westus3']
      }
    ]
  },
  billingConfiguration: {
    billingType: 'payAsYouGo',
    billingPlanId: '00000000-0000-0000-0000-000000000001'
  },
  scalingPolicy: {
    minimumCount: 2,
    maximumCount: 10
  },
  capabilities: {
    '@odata.type': '#microsoft.graph.cloudPcAgentPoolCapabilityConfiguration',
    enableSingleSignOn: true
  }
};

await client.api('/deviceManagement/virtualEndpoint/cloudPcPools')
	.version('beta')
	.post(cloudPcPool);

```