---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ApplicationTemplateCollectionResponse result = graphClient.applicationTemplates().get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "displayName", "riskScore", "categories"};
	requestConfiguration.queryParameters.filter = "categories/any(c: c eq 'contentSharing')";
	requestConfiguration.queryParameters.top = 2;
	requestConfiguration.queryParameters.orderby = new String []{"riskScore/total desc"};
});


```