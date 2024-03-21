---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceConfigurationAssignment = {
  '@odata.type': '#microsoft.graph.deviceConfigurationAssignment',
  target: {
    '@odata.type': 'microsoft.graph.configurationManagerCollectionAssignmentTarget',
    collectionId: 'Collection Id value'
  }
};

await client.api('/deviceManagement/deviceConfigurations/{deviceConfigurationId}/assignments/{deviceConfigurationAssignmentId}')
	.update(deviceConfigurationAssignment);

```