---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationMethodModeDetailCollectionPage authenticationMethodModes = graphClient.identity().conditionalAccess().authenticationStrengths().authenticationMethodModes()
	.buildRequest()
	.get();

```