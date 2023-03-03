---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = graphClient.applications("7bec5fd1-a25f-474c-a6ca-5492082c6a9b")
	.buildRequest()
	.select("id,appId,displayName,requiredResourceAccess")
	.get();

```