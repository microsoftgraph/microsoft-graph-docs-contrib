---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.admin().edge().internetExplorerMode().siteLists("07f4030f-45ff-4ad1-9277-3b8f6ee74141").sites("a22cbc85-d5d2-4e61-8414-42e6704c36f7")
	.buildRequest()
	.delete();

```