---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationMethodModeDetail authenticationMethodModeDetail = graphClient.identity().conditionalAccess().authenticationStrength().authenticationMethodModes("windowsHelloForBusiness")
	.buildRequest()
	.get();

```