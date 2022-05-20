---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identity().b2xUserFlows("{userflow-id}").userFlowIdentityProviders("{identityProvider-id}").reference()
	.buildRequest()
	.delete();

```