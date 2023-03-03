---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationMethodModesCollectionPage authenticationCombinations = graphClient.customRequest("/identity/conditionalAccess/authenticationStrengths/authenticationCombinations", AuthenticationMethodModesCollectionPage.class)
	.buildRequest()
	.get();

```