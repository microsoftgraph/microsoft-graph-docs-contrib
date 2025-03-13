---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomSecurityAttributeDefinitionCollectionResponse result = graphClient.directory().customSecurityAttributeDefinitions().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'";
});


```