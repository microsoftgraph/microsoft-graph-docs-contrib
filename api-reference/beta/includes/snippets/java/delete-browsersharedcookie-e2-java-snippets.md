---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.admin().edge().internetExplorerMode().siteLists("7cf831d2-8a9b-4826-b120-911566f6fd6a").sharedCookies("07f4030f-45ff-4ad1-9277-3b8f6ee74141")
	.buildRequest()
	.delete();

```