---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttendanceRecordCollectionPage attendanceRecords = graphClient.me().onlineMeetings("MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ").attendanceReports("c9b6db1c-d5eb-427d-a5c0-20088d9b22d7").attendanceRecords()
	.buildRequest()
	.get();

```