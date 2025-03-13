---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BusinessScenario businessScenario = new BusinessScenario();
LinkedList<String> ownerAppIds = new LinkedList<String>();
ownerAppIds.add("44109254-4b2b-7a33-76ee-c890a167b295");
ownerAppIds.add("13eb9d8b-1d63-4153-9417-3a69ab200a78");
businessScenario.setOwnerAppIds(ownerAppIds);
BusinessScenario result = graphClient.solutions().businessScenarios().byBusinessScenarioId("{businessScenario-id}").patch(businessScenario);


```