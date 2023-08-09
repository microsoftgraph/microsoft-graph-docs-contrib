---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BusinessScenarioTaskCollectionPage tasks = graphClient.solutions().businessScenarios("c5d514e6c6864911ac46c720affb6e4d").planner().tasks()
	.buildRequest()
	.filter("businessScenarioProperties/externalContextId eq 'Warehouse-CA-36'")
	.get();

```