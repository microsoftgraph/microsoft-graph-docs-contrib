---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CallTranscriptCollectionResponse result = graphClient.me().onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").transcripts().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "contentcorrelationId eq 'e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0'";
});


```