---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerPlanConfigurationLocalizationCollectionPage localizations = graphClient.solutions().businessScenarios("c5d514e6c6864911ac46c720affb6e4d").planner().planConfiguration().localizations()
	.buildRequest()
	.filter("languageTag eq 'en-us'")
	.get();

```