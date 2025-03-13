---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentCollectionResponse result = graphClient.roleManagement().directory().roleAssignments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "principalId eq '7146daa8-1b4b-4a66-b2f7-cf593d03c8d2'";
});


```