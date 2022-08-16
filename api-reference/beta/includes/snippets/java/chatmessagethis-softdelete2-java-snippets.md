---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.teams("172b0cce-e65d-44ce-9a49-91d9f2e8593a").channels("19:22273db3497f4b32bue61f6e82be21c5@thread.tacv2").messages("1649864053377")
	.softDelete()
	.buildRequest()
	.post();

```