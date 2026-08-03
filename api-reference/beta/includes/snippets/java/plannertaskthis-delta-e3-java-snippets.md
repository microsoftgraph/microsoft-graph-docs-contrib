---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.planner().tasks().delta().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "planId eq '-W4K7hIak0WlAwgJCn1sEWQABgjH'";
	requestConfiguration.queryParameters.select = new String []{"percentComplete", "assignments", "creationSource"};
});


```