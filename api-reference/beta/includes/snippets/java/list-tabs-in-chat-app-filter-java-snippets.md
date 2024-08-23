---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamsTabCollectionResponse result = graphClient.chats().byChatId("{chat-id}").tabs().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"teamsApp"};
	requestConfiguration.queryParameters.filter = "teamsApp/id eq 'com.microsoft.teamspace.tab.web'";
});


```