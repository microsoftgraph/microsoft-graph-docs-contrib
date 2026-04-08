---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customDataProvidedResourceUploadSession = {
source: 'BuildingAccessData',
type: '#microsoft.graph.accessReviewDataUploadTriggerCallbackData',
data: {
    accessReviewId: '9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b',
    accessReviewInstanceId: '6a9b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b'
}
};

await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs/6f4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b/accessPackageResources/7b8a1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b/uploadSessions')
	.version('beta')
	.post(customDataProvidedResourceUploadSession);

```