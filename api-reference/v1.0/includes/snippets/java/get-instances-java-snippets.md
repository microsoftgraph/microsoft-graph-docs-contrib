---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EventCollectionResponse result = graphClient.me().events().byEventId("{event-id}").instances().get(requestConfiguration -> {
	requestConfiguration.queryParameters.startDateTime = "2019-04-08T09:00:00.0000000";
	requestConfiguration.queryParameters.endDateTime = "2019-04-30T09:00:00.0000000";
	requestConfiguration.queryParameters.select = new String []{"subject", "bodyPreview", "seriesMasterId", "type", "recurrence", "start", "end"};
});


```