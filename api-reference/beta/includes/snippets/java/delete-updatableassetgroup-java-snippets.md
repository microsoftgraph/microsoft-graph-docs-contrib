---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.admin().windows().updates().updatableAssets("f5ba7065-7065-f5ba-6570-baf56570baf5")
	.buildRequest()
	.delete();

```