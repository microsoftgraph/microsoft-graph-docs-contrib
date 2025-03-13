---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EventCollectionResponse result = graphClient.groups().byGroupId("{group-id}").calendarView().get(requestConfiguration -> {
	requestConfiguration.queryParameters.startDateTime = "2017-01-01T19:00:00-08:00";
	requestConfiguration.queryParameters.endDateTime = "2017-10-01T19:00:00.00-08:00";
	requestConfiguration.headers.add("Prefer", "outlook.body-content-type=\"text\"");
});


```