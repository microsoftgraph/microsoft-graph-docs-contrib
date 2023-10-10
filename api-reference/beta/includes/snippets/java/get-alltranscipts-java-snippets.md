---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Content getAllTranscripts = graphClient.users("8b081ef6-4792-4def-b2c9-c363a1bf41d5").onlineMeeting().getAllTranscripts()
	.buildRequest()
	.filter("meetingOrganizerId eq '8b081ef6-4792-4def-b2c9-c363a1bf41d5'")
	.get();

```