---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deployment = {
    '@odata.type': '#microsoft.graph.windowsUpdates.deployment',
    content: {
        '@odata.type': '#microsoft.graph.windowsUpdates.catalogContent',
        catalogEntry: {
            '@odata.type': '#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry',
            id: 'f341705b-0b15-4ce3-aaf2-6a1681d78606'
        }
    },
    settings: {
        '@odata.type': 'microsoft.graph.windowsUpdates.deploymentSettings',
        schedule: {
            gradualRollout: {
                '@odata.type': '#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings',
                durationBetweenOffers: 'P7D',
                devicePerOffer: 100
            }
        },
        monitoring: {
            monitoringRules: [
                {
                    signal: 'rollback',
                    threshold: 5,
                    action: 'pauseDeployment'
                }
            ]
        }
    }
};

await client.api('/admin/windows/updates/deployments')
	.version('beta')
	.post(deployment);

```