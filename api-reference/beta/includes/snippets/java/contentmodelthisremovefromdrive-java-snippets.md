---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.sites.item.contentmodels.item.removefromdrive.RemoveFromDrivePostRequestBody removeFromDrivePostRequestBody = new com.microsoft.graph.beta.sites.item.contentmodels.item.removefromdrive.RemoveFromDrivePostRequestBody();
removeFromDrivePostRequestBody.setDriveId("b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd");
graphClient.sites().bySiteId("{site-id}").contentModels().byContentModelId("{contentModel-id}").removeFromDrive().post(removeFromDrivePostRequestBody);


```