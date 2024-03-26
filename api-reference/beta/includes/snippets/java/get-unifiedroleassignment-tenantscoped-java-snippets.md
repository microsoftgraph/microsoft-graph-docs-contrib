---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentCollectionResponse result = graphClient.roleManagement().directory().transitiveRoleAssignments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.queryParameters.filter = "principalId eq '2c7936bc-3517-40f3-8eda-4806637b6516' and directoryScopeId eq '/administrativeUnits/26e79164-0c5c-4281-8c5b-be7bc7809fb2'";
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```