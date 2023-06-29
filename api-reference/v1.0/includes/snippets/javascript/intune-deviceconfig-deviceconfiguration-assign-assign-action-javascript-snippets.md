---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceConfigurationAssignment = Content-type: application/json
Content-length: 333

{
  assignments: [
    {
      '@odata.type': '#microsoft.graph.deviceConfigurationAssignment',
      id: 'd59b6342-6342-d59b-4263-9bd542639bd5',
      target: {
        '@odata.type': 'microsoft.graph.configurationManagerCollectionAssignmentTarget',
        collectionId: 'Collection Id value'
      }
    }
  ]
};

await client.api('/deviceManagement/deviceConfigurations/{deviceConfigurationId}/assign')
	.post(deviceConfigurationAssignment);

```