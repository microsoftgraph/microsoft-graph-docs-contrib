---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MeetingAttendanceReport result = graphClient.me().onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").attendanceReports().byMeetingAttendanceReportId("{meetingAttendanceReport-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"attendanceRecords"};
});


```