---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SignInPreferences signInPreferences = graphClient.customRequest("/users/071cc716-8147-4397-a5ba-b2105951cc0b/authentication/signInPreferences", SignInPreferences.class)
	.buildRequest()
	.get();

```