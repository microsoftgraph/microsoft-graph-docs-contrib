---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.sites().bySiteId("{site-id}").lists().byListId("{list-id}").items().delta().get(requestConfiguration -> {
	requestConfiguration.queryParameters.token = "1230919asd190410jlka";
});


```