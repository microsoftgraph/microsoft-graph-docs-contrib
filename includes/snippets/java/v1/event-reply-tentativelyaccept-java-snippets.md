---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.events.item.tentativelyaccept.TentativelyAcceptPostRequestBody tentativelyAcceptPostRequestBody = new com.microsoft.graph.users.item.events.item.tentativelyaccept.TentativelyAcceptPostRequestBody();
tentativelyAcceptPostRequestBody.setComment("I will probably be able to make it.");
tentativelyAcceptPostRequestBody.setSendResponse(true);
graphClient.me().events().byEventId("{event-id}").tentativelyAccept().post(tentativelyAcceptPostRequestBody);


```