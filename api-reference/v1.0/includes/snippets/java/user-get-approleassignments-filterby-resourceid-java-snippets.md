---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppRoleAssignmentCollectionResponse result = graphClient.users().byUserId("{user-id}").appRoleAssignments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "resourceId eq 8e881353-1735-45af-af21-ee1344582a4d";
});


```