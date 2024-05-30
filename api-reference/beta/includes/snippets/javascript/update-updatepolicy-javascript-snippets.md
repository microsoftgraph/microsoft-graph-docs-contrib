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

await client.api('/admin/windows/updates/updatePolicies/a7aa99c1-34a2-850c-5223-7816fde70713')
	.version('beta')
	.update(updatePolicy);

```