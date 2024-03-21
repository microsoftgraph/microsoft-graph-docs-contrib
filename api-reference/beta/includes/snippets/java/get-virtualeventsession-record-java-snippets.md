---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AttendanceRecordCollectionResponse result = graphClient.solutions().virtualEvents().webinars().byVirtualEventWebinarId("{virtualEventWebinar-id}").sessions().byVirtualEventSessionId("{virtualEventSession-id}").attendanceReports().byMeetingAttendanceReportId("{meetingAttendanceReport-id}").attendanceRecords().get();


```