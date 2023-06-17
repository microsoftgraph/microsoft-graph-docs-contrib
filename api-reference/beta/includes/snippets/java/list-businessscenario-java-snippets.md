---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BusinessScenarioCollectionPage businessScenarios = graphClient.solutions().businessScenarios()
	.buildRequest()
	.get();

```