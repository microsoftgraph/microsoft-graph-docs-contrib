---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

graphClient.users().byUserId("{user-id}").onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").transcripts().byCallTranscriptId("{callTranscript-id}").content().get(requestConfiguration -> {
	requestConfiguration.queryParameters.format = "text/vtt";
});


```