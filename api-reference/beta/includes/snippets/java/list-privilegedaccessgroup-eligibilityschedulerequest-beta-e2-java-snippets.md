---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupEligibilityScheduleRequestCollectionPage eligibilityScheduleRequests = graphClient.identityGovernance().privilegedAccess().group().eligibilityScheduleRequests()
	.buildRequest()
	.filter("groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d' and principalId eq '3cce9d87-3986-4f19-8335-7ed075408ca2'")
	.select("principalId,action,groupId")
	.get();

```