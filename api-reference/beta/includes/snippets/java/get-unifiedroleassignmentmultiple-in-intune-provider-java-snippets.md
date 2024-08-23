---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentMultipleCollectionResponse result = graphClient.roleManagement().deviceManagement().roleAssignments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = " principalIds/any(x:x eq '564ae70c-73d9-476b-820b-fb61eb7384b9')";
});


```