---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.getpresencesbyuserid.GetPresencesByUserIdPostRequestBody getPresencesByUserIdPostRequestBody = new com.microsoft.graph.beta.communications.getpresencesbyuserid.GetPresencesByUserIdPostRequestBody();
LinkedList<String> ids = new LinkedList<String>();
ids.add("fa8bf3dc-eca7-46b7-bad1-db199b62afc3");
ids.add("66825e03-7ef5-42da-9069-724602c31f6b");
getPresencesByUserIdPostRequestBody.setIds(ids);
var result = graphClient.communications().getPresencesByUserId().post(getPresencesByUserIdPostRequestBody);


```