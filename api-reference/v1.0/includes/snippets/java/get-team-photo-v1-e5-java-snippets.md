---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.teams("172b0cce-e65d-44ce-9a49-91d9f2e8491e").photo().content()
	.buildRequest()
	.get();

```