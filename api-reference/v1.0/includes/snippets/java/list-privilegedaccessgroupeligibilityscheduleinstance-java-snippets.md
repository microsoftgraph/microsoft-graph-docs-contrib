---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrivilegedAccessGroupEligibilityScheduleInstanceCollectionResponse result = graphClient.identityGovernance().privilegedAccess().group().eligibilityScheduleInstances().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d'";
});


```