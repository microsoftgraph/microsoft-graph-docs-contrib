---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ListItemVersion result = graphClient.sites().bySiteId("{site-id}").lists().byListId("{list-id}").items().byListItemId("{listItem-id}").versions().byListItemVersionId("{listItemVersion-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"fields"};
});


```