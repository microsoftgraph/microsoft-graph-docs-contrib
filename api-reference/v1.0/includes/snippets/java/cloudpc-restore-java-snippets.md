---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.virtualendpoint.cloudpcs.item.restore.RestorePostRequestBody restorePostRequestBody = new com.microsoft.graph.devicemanagement.virtualendpoint.cloudpcs.item.restore.RestorePostRequestBody();
restorePostRequestBody.setCloudPcSnapshotId("A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8");
graphClient.deviceManagement().virtualEndpoint().cloudPCs().byCloudPCId("{cloudPC-id}").restore().post(restorePostRequestBody);


```