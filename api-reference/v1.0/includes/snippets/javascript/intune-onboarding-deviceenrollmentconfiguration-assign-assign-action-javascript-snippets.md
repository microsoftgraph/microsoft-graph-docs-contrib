---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assign = Content-type: application/json
Content-length: 360

{
  enrollmentConfigurationAssignments: [
    {
      '@odata.type': '#microsoft.graph.enrollmentConfigurationAssignment',
      id: '705b021c-021c-705b-1c02-5b701c025b70',
      target: {
        '@odata.type': 'microsoft.graph.configurationManagerCollectionAssignmentTarget',
        collectionId: 'Collection Id value'
      }
    }
  ]
};

await client.api('/deviceManagement/deviceEnrollmentConfigurations/{deviceEnrollmentConfigurationId}/assign')
	.post(assign);

```