---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UserCollectionResponse result = graphClient.users().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "otherMails/any(x:endswith(x,'.edu'))";
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```