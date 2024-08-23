---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.cloudpcs.bulkresize.BulkResizePostRequestBody bulkResizePostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.cloudpcs.bulkresize.BulkResizePostRequestBody();
LinkedList<String> cloudPcIds = new LinkedList<String>();
cloudPcIds.add("30d0e128-de93-41dc-89ec-33d84bb662a0");
cloudPcIds.add("7c82a3e3-9459-44e4-94d9-b92f93bf78dd");
bulkResizePostRequestBody.setCloudPcIds(cloudPcIds);
bulkResizePostRequestBody.setTargetServicePlanId("662009bc-7732-4f6f-8726-25883518b33e");
var result = graphClient.deviceManagement().virtualEndpoint().cloudPCs().bulkResize().post(bulkResizePostRequestBody);


```