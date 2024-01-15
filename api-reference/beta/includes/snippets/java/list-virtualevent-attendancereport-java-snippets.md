---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MeetingAttendanceReportCollectionPage attendanceReports = graphClient.solutions().virtualEvents().webinars("{webinarId}").sessions("{sessionId}").attendanceReports()
	.buildRequest()
	.get();

```