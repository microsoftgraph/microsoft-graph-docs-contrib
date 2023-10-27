---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const enrollmentConfigurationAssignment = {
  '@odata.type': '#microsoft.graph.enrollmentConfigurationAssignment',
  target: {
    '@odata.type': 'microsoft.graph.configurationManagerCollectionAssignmentTarget',
    collectionId: 'Collection Id value'
  }
};

await client.api('/deviceManagement/deviceEnrollmentConfigurations/{deviceEnrollmentConfigurationId}/assignments/{enrollmentConfigurationAssignmentId}')
	.update(enrollmentConfigurationAssignment);

```