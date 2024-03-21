---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.admin.edge.internetexplorermode.sitelists.item.publish.PublishPostRequestBody publishPostRequestBody = new com.microsoft.graph.admin.edge.internetexplorermode.sitelists.item.publish.PublishPostRequestBody();
publishPostRequestBody.setRevision("1.0");
var result = graphClient.admin().edge().internetExplorerMode().siteLists().byBrowserSiteListId("{browserSiteList-id}").publish().post(publishPostRequestBody);


```