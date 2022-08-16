---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const resourceConnection = {
  '@odata.type': '#microsoft.graph.windowsUpdates.operationalInsightsConnection',
  azureSubscriptionId: '322ec614-e9c2-4cd5-a55c-5711fdecf02e',
  azureResourceGroupName: 'target-resource-group',
  workspaceName: 'my-workspace'
};

await client.api('/admin/windows/updates/resourceConnections')
	.version('beta')
	.post(resourceConnection);

```