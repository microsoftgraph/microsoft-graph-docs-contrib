---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const termsAndConditionsAssignment = {
  '@odata.type': '#microsoft.graph.termsAndConditionsAssignment',
  target: {
    '@odata.type': 'microsoft.graph.configurationManagerCollectionAssignmentTarget',
    collectionId: 'Collection Id value'
  }
};

await client.api('/deviceManagement/termsAndConditions/{termsAndConditionsId}/assignments')
	.post(termsAndConditionsAssignment);

```