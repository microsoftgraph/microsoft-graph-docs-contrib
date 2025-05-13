---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CallAiInsightCollectionResponse result = graphClient.me().onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").aiInsights().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "contentcorrelationId eq 'bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3'";
});


```