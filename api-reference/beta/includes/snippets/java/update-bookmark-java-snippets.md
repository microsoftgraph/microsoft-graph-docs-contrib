---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Bookmark bookmark = new Bookmark();
bookmark.description = "Book a fancy vacation in Tuscany or browse museums in Florence.";

graphClient.search().bookmarks("{bookmarksId}")
	.buildRequest()
	.patch(bookmark);

```