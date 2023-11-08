---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlatformCredentialAuthenticationMethodCollectionPage platformCredentialMethods = graphClient.me().authentication().platformCredentialMethods()
	.buildRequest()
	.get();

```