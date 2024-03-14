---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentMultipleCollectionResponse result = graphClient.roleManagement().deviceManagement().roleAssignments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "principalId eq '9e47fc6f-2d7a-464c-944e-d3dd0de522e4'";
});


```