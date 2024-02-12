---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentCollectionResponse result = graphClient.roleManagement().directory().roleAssignments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = " principalId eq '5bde3e51-d13b-4db1-9948-fe4b109d11a7'";
});


```