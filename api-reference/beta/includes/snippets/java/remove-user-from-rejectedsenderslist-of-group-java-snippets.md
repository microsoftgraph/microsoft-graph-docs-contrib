---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

graphClient.groups().byGroupId("{group-id}").rejectedSenders().ref().delete(requestConfiguration -> {
	requestConfiguration.queryParameters.id = "https://graph.microsoft.com/beta/users/{id}";
});


```