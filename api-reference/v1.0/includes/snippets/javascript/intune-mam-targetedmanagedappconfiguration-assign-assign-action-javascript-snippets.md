---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assign = Content-type: application/json
Content-length: 338

{
  assignments: [
    {
      '@odata.type': '#microsoft.graph.targetedManagedAppPolicyAssignment',
      id: '8b68c4a6-c4a6-8b68-a6c4-688ba6c4688b',
      target: {
        '@odata.type': 'microsoft.graph.configurationManagerCollectionAssignmentTarget',
        collectionId: 'Collection Id value'
      }
    }
  ]
};

await client.api('/deviceAppManagement/targetedManagedAppConfigurations/{targetedManagedAppConfigurationId}/assign')
	.post(assign);

```