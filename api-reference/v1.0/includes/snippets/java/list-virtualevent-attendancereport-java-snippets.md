---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MeetingAttendanceReportCollectionPage attendanceReports = graphClient.solutions().virtualEvents().webinars("f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd").sessions("8d62dd52-4dff-4c75-96a9-f905cc3ff942").attendanceReports()
	.buildRequest()
	.get();

```