---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttendanceRecordCollectionPage attendanceRecords = graphClient.me().onlineMeetings("{meetingId}").attendanceReports("{reportId}").attendanceRecords()
	.buildRequest()
	.get();

```