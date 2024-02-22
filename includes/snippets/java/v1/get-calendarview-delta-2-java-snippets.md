---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.calendarview.delta.DeltaRequestBuilder deltaRequestBuilder = new com.microsoft.graph.users.item.calendarview.delta.DeltaRequestBuilder("https://graph.microsoft.com/v1.0/me/calendarView/delta?$skiptoken=R0usmcCM996atia_s", graphClient.getRequestAdapter());
com.microsoft.graph.users.item.calendarview.delta.DeltaGetResponse result = deltaRequestBuilder.get(requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "odata.maxpagesize=2");
});


```