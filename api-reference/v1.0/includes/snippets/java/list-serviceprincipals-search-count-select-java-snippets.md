---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipalCollectionResponse result = graphClient.servicePrincipals().get(requestConfiguration -> {
	requestConfiguration.queryParameters.search = "\"displayName:Team\"";
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.queryParameters.select = new String []{"accountEnabled", "displayName", "publisherName", "servicePrincipalType", "signInAudience"};
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```