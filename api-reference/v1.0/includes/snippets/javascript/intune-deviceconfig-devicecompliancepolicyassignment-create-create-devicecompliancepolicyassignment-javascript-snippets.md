---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceCompliancePolicyAssignment = {
  '@odata.type': '#microsoft.graph.deviceCompliancePolicyAssignment',
  target: {
    '@odata.type': 'microsoft.graph.configurationManagerCollectionAssignmentTarget',
    collectionId: 'Collection Id value'
  }
};

await client.api('/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/assignments')
	.post(deviceCompliancePolicyAssignment);

```