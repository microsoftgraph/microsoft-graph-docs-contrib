---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UserCollectionResponse result = graphClient.users().get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "displayName", "mail", "identities"};
	requestConfiguration.queryParameters.filter = "endsWith(userPrincipalName,'";
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```