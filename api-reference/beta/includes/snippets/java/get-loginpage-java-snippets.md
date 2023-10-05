---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LoginPage loginPage = graphClient.security().attackSimulation().loginPages("2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc")
	.buildRequest()
	.get();

```