---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceCompliancePolicyAssignment = Content-type: application/json
Content-length: 336

{
  assignments: [
    {
      '@odata.type': '#microsoft.graph.deviceCompliancePolicyAssignment',
      id: '92dc3fef-3fef-92dc-ef3f-dc92ef3fdc92',
      target: {
        '@odata.type': 'microsoft.graph.configurationManagerCollectionAssignmentTarget',
        collectionId: 'Collection Id value'
      }
    }
  ]
};

await client.api('/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/assign')
	.post(deviceCompliancePolicyAssignment);

```