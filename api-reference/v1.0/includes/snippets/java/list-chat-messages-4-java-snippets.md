---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessageCollectionResponse result = graphClient.chats().byChatId("{chat-id}").messages().get(requestConfiguration -> {
	requestConfiguration.queryParameters.top = 2;
	requestConfiguration.queryParameters.orderby = new String []{"lastModifiedDateTime desc"};
	requestConfiguration.queryParameters.filter = "lastModifiedDateTime gt 2022-09-22T00:00:00.000Z and lastModifiedDateTime lt 2022-09-24T00:00:00.000Z";
});


```