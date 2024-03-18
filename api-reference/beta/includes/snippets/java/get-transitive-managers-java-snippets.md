---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

User result = graphClient.me().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"manager($levels=max;$select=id,displayName)"};
	requestConfiguration.queryParameters.select = new String []{"id", "displayName"};
	requestConfiguration.headers.add("ConsistencyLevel", "eventual");
});


```