---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupAssignmentScheduleRequest privilegedAccessGroupAssignmentScheduleRequest = graphClient.identityGovernance().privilegedAccess().group().assignmentScheduleRequests("34e963f6-150f-cf79-678c-6fcaf978bb49")
	.buildRequest()
	.get();

```