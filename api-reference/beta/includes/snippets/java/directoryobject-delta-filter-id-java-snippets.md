---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.directoryObjects().delta().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "id eq '87d349ed-44d7-43e1-9a83-5f2406dee5bd'";
});


```