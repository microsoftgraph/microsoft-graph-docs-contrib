---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupCollectionResponse result = graphClient.groups().byGroupId("{group-id}").transitiveMembers().graphGroup().get(requestConfiguration -> {
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```