---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const complianceChange = {
  '@odata.type': '#microsoft.graph.windowsUpdates.contentApproval',
  content: {
    '@odata.type': '#microsoft.graph.windowsUpdates.catalogContent',
    catalogEntry: {
      '@odata.type': '#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry', 
      id: '6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4'
    }
  },
  deploymentSettings: {},
    schedule: {
      startDateTime: 'String (timestamp)',
      gradualRollout: {
        '@odata.type': '#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings',
        endDateTime: 'String (timestamp)'
      }
   }
};

await client.api('/admin/windows/updates/updatePolicies/a7aa99c1-34a2-850c-5223-7816fde70713/complianceChanges')
	.version('beta')
	.post(complianceChange);

```