---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.networkAccess().connectivity().microsoftGraphNetworkaccessGetWebCategoryByUrlWithUrl("{url}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.@url = "msn.com/en-us/sports";
});


```