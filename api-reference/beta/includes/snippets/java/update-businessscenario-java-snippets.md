---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BusinessScenario businessScenario = new BusinessScenario();
LinkedList<String> ownerAppIdsList = new LinkedList<String>();
ownerAppIdsList.add("44109254-4b2b-7a33-76ee-c890a167b295");
ownerAppIdsList.add("13eb9d8b-1d63-4153-9417-3a69ab200a78");
businessScenario.ownerAppIds = ownerAppIdsList;

graphClient.solutions().businessScenarios("c5d514e6c6864911ac46c720affb6e4d")
	.buildRequest()
	.patch(businessScenario);

```