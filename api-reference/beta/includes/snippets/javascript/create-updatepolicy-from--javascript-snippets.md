---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updatePolicy = {
  '@odata.type': '#microsoft.graph.windowsUpdates.updatePolicy',
  audience: {
    id: '8c4eb1eb-d7a3-4633-8e2f-f926e82df08e'
  },
  complianceChanges: [
    {
      '@odata.type': '#microsoft.graph.windowsUpdates.contentApproval'
    }
  ],
  complianceChangeRules: [
    {
      '@odata.type': '#microsoft.graph.windowsUpdates.contentApprovalRule',
      contentFilter: {
        '@odata.type': '#microsoft.graph.windowsUpdates.driverUpdateFilter'
      },
      durationBeforeDeploymentStart: 'P7D'
    }
  ],
  deploymentSettings: {
    '@odata.type': 'microsoft.graph.windowsUpdates.deploymentSettings',
    schedule: {
      gradualRollout: {
        '@odata.type': '#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings',
        durationBetweenOffers: 'P1D',
        devicePerOffer: 1000
      }
    }
  }
};

await client.api('/admin/windows/updates/updatePolicies')
	.version('beta')
	.post(updatePolicy);

```