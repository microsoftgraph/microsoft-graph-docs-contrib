---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamTemplateCollectionResponse result = graphClient.teamwork().teamTemplates().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"definitions"};
	requestConfiguration.queryParameters.filter = "definitions/any(a:a/languageTag eq 'en-US')";
});


```