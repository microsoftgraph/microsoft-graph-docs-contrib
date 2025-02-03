---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentCollectionResponse result = graphClient.roleManagement().directory().roleAssignments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "roleDefinitionId eq '62e90394-69f5-4237-9190-012177145e10'";
	requestConfiguration.queryParameters.expand = new String []{"principal"};
});


```