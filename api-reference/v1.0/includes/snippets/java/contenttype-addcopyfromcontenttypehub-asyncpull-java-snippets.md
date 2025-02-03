---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.sites.item.lists.item.contenttypes.addcopyfromcontenttypehub.AddCopyFromContentTypeHubPostRequestBody addCopyFromContentTypeHubPostRequestBody = new com.microsoft.graph.sites.item.lists.item.contenttypes.addcopyfromcontenttypehub.AddCopyFromContentTypeHubPostRequestBody();
addCopyFromContentTypeHubPostRequestBody.setContentTypeId("0x0101");
var result = graphClient.sites().bySiteId("{site-id}").lists().byListId("{list-id}").contentTypes().addCopyFromContentTypeHub().post(addCopyFromContentTypeHubPostRequestBody);


```