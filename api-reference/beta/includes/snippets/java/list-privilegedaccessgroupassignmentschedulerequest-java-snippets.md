---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupAssignmentScheduleRequestCollectionPage assignmentScheduleRequests = graphClient.identityGovernance().privilegedAccess().group().assignmentScheduleRequests()
	.buildRequest()
	.get();

```