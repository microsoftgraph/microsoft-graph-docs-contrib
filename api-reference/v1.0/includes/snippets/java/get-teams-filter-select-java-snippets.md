---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamCollectionResponse result = graphClient.teams().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "displayName eq 'A Contoso Team'";
	requestConfiguration.queryParameters.select = new String []{"id", "description"};
});


```