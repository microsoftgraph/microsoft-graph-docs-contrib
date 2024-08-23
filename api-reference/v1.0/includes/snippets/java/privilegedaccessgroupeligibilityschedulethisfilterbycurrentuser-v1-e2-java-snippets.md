---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.identityGovernance().privilegedAccess().group().eligibilitySchedules().filterByCurrentUserWithOn("principal").get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc' and accessId eq 'member'";
});


```