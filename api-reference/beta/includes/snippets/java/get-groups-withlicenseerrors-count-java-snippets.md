---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupCollectionResponse result = graphClient.groups().get(requestConfiguration -> {
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.queryParameters.filter = "hasMembersWithLicenseErrors eq true";
	requestConfiguration.queryParameters.select = new String []{"id", "displayName"};
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```