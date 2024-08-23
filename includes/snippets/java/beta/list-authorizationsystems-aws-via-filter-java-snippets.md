---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthorizationSystemCollectionResponse result = graphClient.external().authorizationSystems().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "authorizationSystemType eq 'aws'";
});


```