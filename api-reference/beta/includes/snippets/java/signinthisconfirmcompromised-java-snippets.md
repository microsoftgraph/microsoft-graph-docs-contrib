---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.auditlogs.signins.confirmcompromised.ConfirmCompromisedPostRequestBody confirmCompromisedPostRequestBody = new com.microsoft.graph.beta.auditlogs.signins.confirmcompromised.ConfirmCompromisedPostRequestBody();
LinkedList<String> requestIds = new LinkedList<String>();
requestIds.add("f01c6af6-6683-4a37-a945-0a925501eede");
requestIds.add("42bf60ac-d0cb-4206-aa5c-101884298f55");
requestIds.add("f09c8f14-8d8e-42cf-8a7e-732b0594e79b");
confirmCompromisedPostRequestBody.setRequestIds(requestIds);
graphClient.auditLogs().signIns().confirmCompromised().post(confirmCompromisedPostRequestBody);


```