---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.directoryObjects().delta().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "isof('microsoft.graph.user') or isof('microsoft.graph.group')";
	requestConfiguration.queryParameters.select = new String []{"microsoft.graph.user/surname", "microsoft.graph.group/displayName"};
	requestConfiguration.headers.add("Prefer", "return=minimal");
});


```