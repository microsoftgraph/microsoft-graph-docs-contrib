---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.search.Bookmark bookmark = new com.microsoft.graph.beta.models.search.Bookmark();
bookmark.setDescription("Book a fancy vacation in Tuscany or browse museums in Florence.");
com.microsoft.graph.models.search.Bookmark result = graphClient.search().bookmarks().byBookmarkId("{bookmark-id}").patch(bookmark);


```