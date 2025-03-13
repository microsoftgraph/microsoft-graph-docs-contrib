---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

List result = graphClient.sites().bySiteId("{site-id}").lists().byListId("{list-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"name", "lastModifiedDateTime"};
	requestConfiguration.queryParameters.expand = new String []{"columns(select=name,description)", "items(expand=fields(select=Name,Color,Quantity)", ")"};
});


```