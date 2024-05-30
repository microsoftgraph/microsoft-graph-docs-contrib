---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EventCollectionResponse result = graphClient.me().calendarView().get(requestConfiguration -> {
	requestConfiguration.queryParameters.startDateTime = "2020-01-01T19:00:00-08:00";
	requestConfiguration.queryParameters.endDateTime = "2020-01-02T19:00:00-08:00";
});


```