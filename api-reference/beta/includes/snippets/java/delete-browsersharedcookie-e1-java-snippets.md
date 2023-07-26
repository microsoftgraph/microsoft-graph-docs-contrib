---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.admin().edge().internetExplorerMode().siteLists("7cf831d2-8a9b-4826-b120-911566f6fd6a").sharedCookies("07b4cc32-237f-4a1a-9d7f-531efc26220e")
	.buildRequest()
	.delete();

```