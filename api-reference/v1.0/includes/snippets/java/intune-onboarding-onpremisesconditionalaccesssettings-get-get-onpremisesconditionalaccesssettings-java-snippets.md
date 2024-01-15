---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnPremisesConditionalAccessSettings onPremisesConditionalAccessSettings = graphClient.deviceManagement().conditionalAccessSettings()
	.buildRequest()
	.get();

```