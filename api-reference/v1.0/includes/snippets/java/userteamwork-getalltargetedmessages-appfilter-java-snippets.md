---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.users().byUserId("{user-id}").teamwork().getAllTargetedMessages().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "from/application/id eq '6d23e712-527b-406f-8d59-d02927885918'";
});


```