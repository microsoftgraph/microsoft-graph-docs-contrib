---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const targetedManagedAppPolicyAssignment = {
  '@odata.type': '#microsoft.graph.targetedManagedAppPolicyAssignment',
  target: {
    '@odata.type': 'microsoft.graph.configurationManagerCollectionAssignmentTarget',
    collectionId: 'Collection Id value'
  }
};

await client.api('/deviceAppManagement/iosManagedAppProtections/{iosManagedAppProtectionId}/assignments/{targetedManagedAppPolicyAssignmentId}')
	.update(targetedManagedAppPolicyAssignment);

```