---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UserCollectionResponse result = graphClient.users().get(requestConfiguration -> {
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.queryParameters.select = new String []{"id", "displayName", "customSecurityAttributes"};
	requestConfiguration.queryParameters.filter = "customSecurityAttributes/Marketing/AppCountry eq 'Canada'";
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```