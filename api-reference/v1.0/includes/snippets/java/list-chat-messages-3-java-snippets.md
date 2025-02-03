---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessageCollectionResponse result = graphClient.chats().byChatId("{chat-id}").messages().get(requestConfiguration -> {
	requestConfiguration.queryParameters.top = 2;
	requestConfiguration.queryParameters.orderby = new String []{"createdDateTime desc"};
});


```