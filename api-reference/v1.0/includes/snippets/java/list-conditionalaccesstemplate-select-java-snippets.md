---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConditionalAccessTemplateCollectionResponse result = graphClient.identity().conditionalAccess().templates().get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"name", "description", "id", "scenarios"};
	requestConfiguration.queryParameters.filter = "scenarios has 'secureFoundation'";
});


```