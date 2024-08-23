---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UserCollectionResponse result = graphClient.users().get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "displayName", "extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker", "extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable"};
});


```