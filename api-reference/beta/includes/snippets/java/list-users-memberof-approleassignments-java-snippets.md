---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupCollectionResponse result = graphClient.users().byUserId("{user-id}").memberOf().graphGroup().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "appRoleAssignments/$count gt 0";
	requestConfiguration.queryParameters.select = new String []{"id", "displayName"};
});


```