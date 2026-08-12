---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.users().byUserId("{user-id}").teamwork().getAllTargetedMessages().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "lastModifiedDateTime gt 2024-01-01T00:00:00Z and lastModifiedDateTime lt 2024-12-31T23:59:59Z";
});


```