---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationMethodModeDetail authenticationMethodModeDetail = graphClient.identity().conditionalAccess().authenticationStrengths().authenticationMethodModes("windowsHelloForBusiness")
	.buildRequest()
	.get();

```