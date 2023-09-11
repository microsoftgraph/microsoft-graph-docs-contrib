---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BusinessScenario businessScenario = new BusinessScenario();
businessScenario.displayName = "Contoso Order Tracking";
businessScenario.uniqueName = "com.contoso.apps.ordertracking";

graphClient.solutions().businessScenarios()
	.buildRequest()
	.post(businessScenario);

```