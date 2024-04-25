---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnlineMeetingCollectionResponse result = graphClient.communications().onlineMeetings().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "VideoTeleconferenceId eq '123456789'";
});


```