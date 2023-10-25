---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupAssignmentScheduleInstance privilegedAccessGroupAssignmentScheduleInstance = graphClient.identityGovernance().privilegedAccess().group().assignmentScheduleInstances("48fe5560-de56-2750-ae7c-2bbf1da9e452")
	.buildRequest()
	.get();

```