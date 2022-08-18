---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PasswordAuthenticationMethod passwordAuthenticationMethod = graphClient.me().authentication().passwordMethods("28c10230-6103-485e-b985-444c60001490")
	.buildRequest()
	.get();

```