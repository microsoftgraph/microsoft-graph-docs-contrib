---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupCollectionResponse result = graphClient.groups().get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "assignedLicenses"};
	requestConfiguration.queryParameters.filter = "assignedLicenses/any()";
	requestConfiguration.queryParameters.expand = new String []{"members($select=id,displayName)"};
});


```