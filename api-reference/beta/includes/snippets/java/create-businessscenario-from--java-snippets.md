---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BusinessScenario businessScenario = new BusinessScenario();
businessScenario.setOdataType("#microsoft.graph.businessScenario");
businessScenario.setDisplayName("Contoso Order Tracking");
businessScenario.setUniqueName("com.contoso.apps.ordertracking");
BusinessScenario result = graphClient.solutions().businessScenarios().post(businessScenario);


```