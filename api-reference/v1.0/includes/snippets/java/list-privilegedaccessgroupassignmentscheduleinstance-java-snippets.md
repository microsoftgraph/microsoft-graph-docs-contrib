---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupAssignmentScheduleInstanceCollectionPage assignmentScheduleInstances = graphClient.identityGovernance().privilegedAccess().group().assignmentScheduleInstances()
	.buildRequest()
	.filter("groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d'")
	.get();

```