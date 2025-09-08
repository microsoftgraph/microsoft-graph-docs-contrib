---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.cloudapps.unpublish.UnpublishPostRequestBody unpublishPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.cloudapps.unpublish.UnpublishPostRequestBody();
LinkedList<String> cloudAppIds = new LinkedList<String>();
cloudAppIds.add("30d0e128-de93-41dc-89ec-33d84bb662a0");
cloudAppIds.add("40d0e128-de93-41dc-89ec-33d84bb662a0");
unpublishPostRequestBody.setCloudAppIds(cloudAppIds);
graphClient.deviceManagement().virtualEndpoint().cloudApps().unpublish().post(unpublishPostRequestBody);


```