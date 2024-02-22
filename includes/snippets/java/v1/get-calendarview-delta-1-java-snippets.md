---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.me().calendarView().delta().get(requestConfiguration -> {
	requestConfiguration.queryParameters.startDateTime = "2016-12-01T00:00:00Z";
	requestConfiguration.queryParameters.endDateTime = "2016-12-30T00:00:00Z";
	requestConfiguration.headers.add("Prefer", "odata.maxpagesize=2");
});


```