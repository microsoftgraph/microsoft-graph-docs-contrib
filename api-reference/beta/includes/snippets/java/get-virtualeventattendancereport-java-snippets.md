---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MeetingAttendanceReport meetingAttendanceReport = graphClient.solutions().virtualEvents().webinars("{webinarId}").sessions("{sessionId}").attendanceReports("{reportId}")
	.buildRequest()
	.get();

```