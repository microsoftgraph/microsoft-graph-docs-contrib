---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttendanceRecordCollectionPage attendanceRecords = graphClient.solutions().virtualEvents().webinars("{webinarId}").sessions("{sessionId}").attendanceReports("{reportId}").attendanceRecords()
	.buildRequest()
	.get();

```