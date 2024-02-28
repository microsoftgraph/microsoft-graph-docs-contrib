---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EventCollectionResponse result = graphClient.me().events().get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"subject", "body", "bodyPreview", "organizer", "attendees", "start", "end", "location"};
	requestConfiguration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"");
});


```