---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Training training = graphClient.security().attackSimulation().trainings("21b2b7d1-11ae-a7a8-99c8-9029a4e70cc9")
	.buildRequest()
	.get();

```