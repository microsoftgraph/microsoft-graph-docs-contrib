---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EventCollectionResponse result = graphClient.me().calendar().calendarView().get(requestConfiguration -> {
	requestConfiguration.queryParameters.startDateTime = "2017-01-01T19:00:00-08:00";
	requestConfiguration.queryParameters.endDateTime = "2017-01-07T19:00:00-08:00";
});


```