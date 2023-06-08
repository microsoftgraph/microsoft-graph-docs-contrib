---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupAssignmentSchedule privilegedAccessGroupAssignmentSchedule = graphClient.identityGovernance().privilegedAccess().group().assignmentSchedules("8ba569e8-7024-f5f8-91ec-9b75d92897f1")
	.buildRequest()
	.get();

```