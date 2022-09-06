---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookmarkCollectionPage bookmarks = graphClient.search().bookmarks()
	.buildRequest()
	.get();

```