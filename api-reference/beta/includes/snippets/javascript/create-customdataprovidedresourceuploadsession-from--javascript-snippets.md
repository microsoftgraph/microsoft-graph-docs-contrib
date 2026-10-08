---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customDataProvidedResourceUploadSession = {
  '@odata.type': '#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession',
  data: {
    '@odata.type': '#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData',
    reviewDefinitionId: '9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b',
    reviewInstanceId: '15eeb4df-8a4d-4f8e-9b7a-6b3e1c7f5a9d'
  }
};

await client.api('/identityGovernance/catalogs/{catalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions')
	.version('beta')
	.post(customDataProvidedResourceUploadSession);

```