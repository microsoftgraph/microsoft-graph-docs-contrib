---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessageCollectionResponse result = graphClient.users().byUserId("{user-id}").chats().byChatId("{chat-id}").messages().get(requestConfiguration -> {
	requestConfiguration.queryParameters.top = 2;
	requestConfiguration.queryParameters.filter = "lastModifiedDateTime gt 2021-03-17T07:13:28.000z";
	requestConfiguration.queryParameters.orderby = new String []{"createdDateTime desc"};
});


```