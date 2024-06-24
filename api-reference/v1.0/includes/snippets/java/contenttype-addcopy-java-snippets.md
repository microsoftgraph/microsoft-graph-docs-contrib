---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.sites.item.lists.item.contenttypes.addcopy.AddCopyPostRequestBody addCopyPostRequestBody = new com.microsoft.graph.sites.item.lists.item.contenttypes.addcopy.AddCopyPostRequestBody();
addCopyPostRequestBody.setContentType("https://graph.microsoft.com/v1.0/sites/{site-id}/contentTypes/0x0101");
var result = graphClient.sites().bySiteId("{site-id}").lists().byListId("{list-id}").contentTypes().addCopy().post(addCopyPostRequestBody);


```