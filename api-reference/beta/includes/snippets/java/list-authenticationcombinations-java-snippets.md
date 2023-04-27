---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationMethodModesCollectionPage combinations = graphClient.customRequest("/identity/conditionalAccess/authenticationStrength/combinations", AuthenticationMethodModesCollectionPage.class)
	.buildRequest()
	.get();

```