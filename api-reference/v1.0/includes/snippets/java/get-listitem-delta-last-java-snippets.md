---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ListItem result = graphClient.sites().bySiteId("{site-id}").lists().byListId("{list-id}").items().byListItemId("{listItem-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.token = "1230919asd190410jlka";
});


```