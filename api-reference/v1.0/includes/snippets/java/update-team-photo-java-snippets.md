---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

byte[] stream = Base64.getDecoder().decode("Binary data for the image");
	graphClient.teams("172b0cce-e65d-44ce-9a49-91d9f2e8491e").photo().content()
	.buildRequest()
	.put(stream);

```