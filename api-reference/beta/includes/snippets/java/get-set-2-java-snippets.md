---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Set set = graphClient.termStore().sets("8ed8c9ea-7052-4c1d-a4d7-b9c10bffea6f")
	.buildRequest()
	.get();

```