---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BrowserSite browserSite = graphClient.admin().edge().internetExplorerMode().siteLists("20579923-e6c8-425a-b728-47f43c10bc05").sites("a22cbc85-d5d2-4e61-8414-42e6704c36f7")
	.buildRequest()
	.get();

```