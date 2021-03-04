---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IWindowsHelloForBusinessAuthenticationMethodCollectionPage windowsHelloForBusinessMethods = graphClient.users("annie@contoso.com").authentication().windowsHelloForBusinessMethods()
	.buildRequest()
	.get();

```