---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerPlanConfiguration plannerPlanConfiguration = new PlannerPlanConfiguration();
plannerPlanConfiguration.setOdataType("#microsoft.graph.plannerPlanConfiguration");
plannerPlanConfiguration.setDefaultLanguage("en-us");
LinkedList<PlannerPlanConfigurationBucketDefinition> buckets = new LinkedList<PlannerPlanConfigurationBucketDefinition>();
PlannerPlanConfigurationBucketDefinition plannerPlanConfigurationBucketDefinition = new PlannerPlanConfigurationBucketDefinition();
plannerPlanConfigurationBucketDefinition.setExternalBucketId("deliveryBucket");
buckets.add(plannerPlanConfigurationBucketDefinition);
PlannerPlanConfigurationBucketDefinition plannerPlanConfigurationBucketDefinition1 = new PlannerPlanConfigurationBucketDefinition();
plannerPlanConfigurationBucketDefinition1.setExternalBucketId("storePickupBucket");
buckets.add(plannerPlanConfigurationBucketDefinition1);
PlannerPlanConfigurationBucketDefinition plannerPlanConfigurationBucketDefinition2 = new PlannerPlanConfigurationBucketDefinition();
plannerPlanConfigurationBucketDefinition2.setExternalBucketId("specialOrdersBucket");
buckets.add(plannerPlanConfigurationBucketDefinition2);
PlannerPlanConfigurationBucketDefinition plannerPlanConfigurationBucketDefinition3 = new PlannerPlanConfigurationBucketDefinition();
plannerPlanConfigurationBucketDefinition3.setExternalBucketId("returnProcessingBucket");
buckets.add(plannerPlanConfigurationBucketDefinition3);
plannerPlanConfiguration.setBuckets(buckets);
PlannerPlanConfiguration result = graphClient.solutions().businessScenarios().byBusinessScenarioId("{businessScenario-id}").planner().planConfiguration().patch(plannerPlanConfiguration);


```