---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.auditlogs.signins.confirmsafe.ConfirmSafePostRequestBody confirmSafePostRequestBody = new com.microsoft.graph.beta.auditlogs.signins.confirmsafe.ConfirmSafePostRequestBody();
LinkedList<String> requestIds = new LinkedList<String>();
requestIds.add("5a0c76d2-cb57-4ece-9bc1-c323178f116a");
requestIds.add("96609214-09ef-4f80-9d4a-ace5fceecaec");
requestIds.add("05020696-4eb8-45a3-918f-8f8bb7ad6015");
confirmSafePostRequestBody.setRequestIds(requestIds);
graphClient.auditLogs().signIns().confirmSafe().post(confirmSafePostRequestBody);


```