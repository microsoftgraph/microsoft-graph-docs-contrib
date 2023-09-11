---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationMethodModeDetailCollectionPage authenticationMethodModes = graphClient.identity().conditionalAccess().authenticationStrength().authenticationMethodModes()
	.buildRequest()
	.get();

```