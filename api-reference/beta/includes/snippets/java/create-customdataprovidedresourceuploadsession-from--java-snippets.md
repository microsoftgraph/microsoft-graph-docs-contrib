---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomDataProvidedResourceUploadSession customDataProvidedResourceUploadSession = new CustomDataProvidedResourceUploadSession();
customDataProvidedResourceUploadSession.setSource("BuildingAccessData");
customDataProvidedResourceUploadSession.setType("#microsoft.graph.accessReviewDataUploadTriggerCallbackData");
CustomExtensionData data = new CustomExtensionData();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("accessReviewId", "9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b");
additionalData.put("accessReviewInstanceId", "6a9b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b");
data.setAdditionalData(additionalData);
customDataProvidedResourceUploadSession.setData(data);
CustomDataProvidedResourceUploadSession result = graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs().byAccessPackageCatalogId("{accessPackageCatalog-id}").accessPackageResources().byAccessPackageResourceId("{accessPackageResource-id}").uploadSessions().post(customDataProvidedResourceUploadSession);


```