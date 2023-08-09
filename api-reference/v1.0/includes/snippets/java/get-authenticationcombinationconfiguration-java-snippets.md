---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationCombinationConfiguration authenticationCombinationConfiguration = graphClient.identity().conditionalAccess().authenticationStrength().policies("0e371351-6419-4c8a-8047-61eef0212ffb").combinationConfigurations("133b68c4-503b-4e87-839a-6c286a27381b")
	.buildRequest()
	.get();

```