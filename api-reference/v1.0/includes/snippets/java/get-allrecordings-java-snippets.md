---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnlineMeeting result = graphClient.users().byUserId("{user-id}").onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "MeetingOrganizer/User/Id eq '8b081ef6-4792-4def-b2c9-c363a1bf41d5'";
});


```