---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MeetingRegistration result = graphClient.me().onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").registration().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"microsoft.graph.meetingRegistration/customQuestions"};
});


```