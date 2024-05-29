---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatCollectionResponse result = graphClient.users().byUserId("{user-id}").chats().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"members"};
	requestConfiguration.queryParameters.filter = "members/any(o: o/displayname eq 'Peter Parker')";
});


```