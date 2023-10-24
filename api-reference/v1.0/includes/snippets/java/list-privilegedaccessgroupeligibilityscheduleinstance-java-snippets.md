---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupEligibilityScheduleInstanceCollectionPage eligibilityScheduleInstances = graphClient.identityGovernance().privilegedAccess().group().eligibilityScheduleInstances()
	.buildRequest()
	.filter("groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d'")
	.get();

```