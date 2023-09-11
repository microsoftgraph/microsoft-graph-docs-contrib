---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomAuthenticationExtensionCollectionPage customAuthenticationExtensions = graphClient.identity().customAuthenticationExtensions()
	.buildRequest()
	.get();

```