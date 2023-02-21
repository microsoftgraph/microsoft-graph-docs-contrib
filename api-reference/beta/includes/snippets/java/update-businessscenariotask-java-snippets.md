---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BusinessScenarioTask businessScenarioTask = new BusinessScenarioTask();
businessScenarioTask.title = "Customer order #12010";
businessScenarioTask.percentComplete = 20;
businessScenarioTask.priority = 1;
BusinessScenarioProperties businessScenarioProperties = new BusinessScenarioProperties();
businessScenarioProperties.externalObjectVersion = "000003";
businessScenarioTask.businessScenarioProperties = businessScenarioProperties;

graphClient.solutions().businessScenarios("c5d514e6c6864911ac46c720affb6e4d").planner().tasks("pmc1rS1Io0C3rXQhyXIsNmUAOeIi")
	.buildRequest()
	.patch(businessScenarioTask);

```