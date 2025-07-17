---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UserCollectionResponse result = graphClient.users().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "isManagementRestricted eq true";
	requestConfiguration.queryParameters.select = new String []{"displayName", "userPrincipalName"};
});


```