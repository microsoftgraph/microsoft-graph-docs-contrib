---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.virtualendpoint.cloudpcs.item.resize.ResizePostRequestBody resizePostRequestBody = new com.microsoft.graph.devicemanagement.virtualendpoint.cloudpcs.item.resize.ResizePostRequestBody();
resizePostRequestBody.setTargetServicePlanId("30d0e128-de93-41dc-89ec-33d84bb662a0");
graphClient.deviceManagement().virtualEndpoint().cloudPCs().byCloudPCId("{cloudPC-id}").resize().post(resizePostRequestBody);


```