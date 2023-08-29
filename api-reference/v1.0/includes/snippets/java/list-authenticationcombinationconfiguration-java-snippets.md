---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationCombinationConfigurationCollectionPage combinationConfigurations = graphClient.identity().conditionalAccess().authenticationStrength().policies("0e371351-6419-4c8a-8047-61eef0212ffb").combinationConfigurations()
	.buildRequest()
	.get();

```