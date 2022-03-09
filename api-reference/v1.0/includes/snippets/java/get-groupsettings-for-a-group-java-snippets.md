---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupSettingCollectionPage settings = graphClient.groups("05aa6a98-956a-45c0-b13b-88076a23f2cd").settings()
	.buildRequest()
	.get();

```