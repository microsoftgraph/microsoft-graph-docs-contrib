---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("filter", "principalId eq '3cce9d87-3986-4f19-8335-7ed075408ca2'"));

PrivilegedAccessGroupEligibilityScheduleCollectionPage eligibilitySchedules = graphClient.identityGovernance().privilegedAccess().group().eligibilitySchedules()
	.buildRequest( requestOptions )
	.filter("principalId eq '3cce9d87-3986-4f19-8335-7ed075408ca2'")
	.select("accessId,principalId,groupId")
	.get();

```