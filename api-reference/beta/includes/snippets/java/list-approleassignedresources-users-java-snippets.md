---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipalCollectionResponse result = graphClient.me().appRoleAssignedResources().get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"displayName", "accountEnabled", "servicePrincipalType", "signInAudience"};
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```