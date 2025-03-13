---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentMultipleCollectionResponse result = graphClient.roleManagement().cloudPC().roleAssignments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "roleDefinitionId eq 'b5c08161-a7af-481c-ace2-a20a69a48fb1'";
});


```