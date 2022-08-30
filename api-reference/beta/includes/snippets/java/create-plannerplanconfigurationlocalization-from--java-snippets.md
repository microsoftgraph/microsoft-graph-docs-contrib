---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerPlanConfigurationLocalization plannerPlanConfigurationLocalization = new PlannerPlanConfigurationLocalization();
plannerPlanConfigurationLocalization.setOdataType("#microsoft.graph.plannerPlanConfigurationLocalization");
plannerPlanConfigurationLocalization.setLanguageTag("en-us");
plannerPlanConfigurationLocalization.setPlanTitle("Order Tracking");
LinkedList<PlannerPlanConfigurationBucketLocalization> buckets = new LinkedList<PlannerPlanConfigurationBucketLocalization>();
PlannerPlanConfigurationBucketLocalization plannerPlanConfigurationBucketLocalization = new PlannerPlanConfigurationBucketLocalization();
plannerPlanConfigurationBucketLocalization.setOdataType("microsoft.graph.plannerPlanConfigurationBucketLocalization");
plannerPlanConfigurationBucketLocalization.setExternalBucketId("deliveryBucket");
plannerPlanConfigurationBucketLocalization.setName("Deliveries");
buckets.add(plannerPlanConfigurationBucketLocalization);
PlannerPlanConfigurationBucketLocalization plannerPlanConfigurationBucketLocalization1 = new PlannerPlanConfigurationBucketLocalization();
plannerPlanConfigurationBucketLocalization1.setOdataType("microsoft.graph.plannerPlanConfigurationBucketLocalization");
plannerPlanConfigurationBucketLocalization1.setExternalBucketId("storePickupBucket");
plannerPlanConfigurationBucketLocalization1.setName("Pickup");
buckets.add(plannerPlanConfigurationBucketLocalization1);
PlannerPlanConfigurationBucketLocalization plannerPlanConfigurationBucketLocalization2 = new PlannerPlanConfigurationBucketLocalization();
plannerPlanConfigurationBucketLocalization2.setOdataType("microsoft.graph.plannerPlanConfigurationBucketLocalization");
plannerPlanConfigurationBucketLocalization2.setExternalBucketId("specialOrdersBucket");
plannerPlanConfigurationBucketLocalization2.setName("Special Orders");
buckets.add(plannerPlanConfigurationBucketLocalization2);
PlannerPlanConfigurationBucketLocalization plannerPlanConfigurationBucketLocalization3 = new PlannerPlanConfigurationBucketLocalization();
plannerPlanConfigurationBucketLocalization3.setOdataType("microsoft.graph.plannerPlanConfigurationBucketLocalization");
plannerPlanConfigurationBucketLocalization3.setExternalBucketId("returnProcessingBucket");
plannerPlanConfigurationBucketLocalization3.setName("Customer Returns");
buckets.add(plannerPlanConfigurationBucketLocalization3);
plannerPlanConfigurationLocalization.setBuckets(buckets);
PlannerPlanConfigurationLocalization result = graphClient.solutions().businessScenarios().byBusinessScenarioId("{businessScenario-id}").planner().planConfiguration().localizations().post(plannerPlanConfigurationLocalization);


```