---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customCalloutExtension = {
  '@odata.type': '#microsoft.graph.accessPackageAssignmentWorkflowExtension',
  displayName: 'test_action_0124_email',
  description: 'this is for graph testing only'
};

await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/accessPackageCustomWorkflowExtensions/78ffaec5-ae8e-4902-a434-5ffc5d3d3cd0')
	.version('beta')
	.put(customCalloutExtension);

```