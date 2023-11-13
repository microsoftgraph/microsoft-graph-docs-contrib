---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlatformCredentialAuthenticationMethod platformCredentialAuthenticationMethod = graphClient.me().authentication().platformCredentialMethods("R18B3t8Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJSM1")
	.buildRequest()
	.get();

```