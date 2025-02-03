---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ApplicationCollectionResponse result = graphClient.applications().get(requestConfiguration -> {
	requestConfiguration.queryParameters.search = "\"displayName:Web\"";
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.queryParameters.select = new String []{"appId", "identifierUris", "displayName", "publisherDomain", "signInAudience"};
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```