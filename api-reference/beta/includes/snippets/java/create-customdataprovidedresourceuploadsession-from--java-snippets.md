---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomDataProvidedResourceAccessReviewUploadSession customDataProvidedResourceUploadSession = new CustomDataProvidedResourceAccessReviewUploadSession();
customDataProvidedResourceUploadSession.setOdataType("#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession");
com.microsoft.graph.beta.models.customdataprovidedresourcepayloads.AccessReviewContextData data = new com.microsoft.graph.beta.models.customdataprovidedresourcepayloads.AccessReviewContextData();
data.setOdataType("#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData");
data.setReviewDefinitionId("9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b");
data.setReviewInstanceId("15eeb4df-8a4d-4f8e-9b7a-6b3e1c7f5a9d");
customDataProvidedResourceUploadSession.setData(data);
CustomDataProvidedResourceUploadSession result = graphClient.identityGovernance().catalogs().byAccessPackageCatalogId("{accessPackageCatalog-id}").accessPackageResources().byAccessPackageResourceId("{accessPackageResource-id}").uploadSessions().post(customDataProvidedResourceUploadSession);


```