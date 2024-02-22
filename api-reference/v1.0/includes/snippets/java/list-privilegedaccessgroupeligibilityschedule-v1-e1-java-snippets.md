---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrivilegedAccessGroupEligibilityScheduleCollectionResponse result = graphClient.identityGovernance().privilegedAccess().group().eligibilitySchedules().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d' and principalId eq '3cce9d87-3986-4f19-8335-7ed075408ca2'";
});


```