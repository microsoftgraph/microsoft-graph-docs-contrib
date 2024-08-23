---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UserCollectionResponse result = graphClient.groups().byGroupId("{group-id}").members().graphUser().get(requestConfiguration -> {
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.queryParameters.orderby = new String []{"displayName"};
	requestConfiguration.queryParameters.search = "\"displayName:Pr\"";
	requestConfiguration.queryParameters.select = new String []{"displayName", "id"};
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```