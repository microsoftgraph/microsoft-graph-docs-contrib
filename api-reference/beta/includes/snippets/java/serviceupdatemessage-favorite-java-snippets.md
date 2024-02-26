---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.serviceannouncement.messages.favorite.FavoritePostRequestBody favoritePostRequestBody = new com.microsoft.graph.beta.admin.serviceannouncement.messages.favorite.FavoritePostRequestBody();
LinkedList<String> messageIds = new LinkedList<String>();
messageIds.add("MC172851");
messageIds.add("MC167983");
favoritePostRequestBody.setMessageIds(messageIds);
var result = graphClient.admin().serviceAnnouncement().messages().favorite().post(favoritePostRequestBody);


```