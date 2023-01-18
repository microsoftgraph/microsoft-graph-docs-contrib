---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerPlanConfiguration plannerPlanConfiguration = new PlannerPlanConfiguration();
plannerPlanConfiguration.defaultLanguage = "en-us";
LinkedList<PlannerPlanConfigurationBucketDefinition> bucketsList = new LinkedList<PlannerPlanConfigurationBucketDefinition>();
PlannerPlanConfigurationBucketDefinition buckets = new PlannerPlanConfigurationBucketDefinition();
buckets.externalBucketId = "deliveryBucket";
bucketsList.add(buckets);
PlannerPlanConfigurationBucketDefinition buckets1 = new PlannerPlanConfigurationBucketDefinition();
buckets1.externalBucketId = "storePickupBucket";
bucketsList.add(buckets1);
PlannerPlanConfigurationBucketDefinition buckets2 = new PlannerPlanConfigurationBucketDefinition();
buckets2.externalBucketId = "specialOrdersBucket";
bucketsList.add(buckets2);
PlannerPlanConfigurationBucketDefinition buckets3 = new PlannerPlanConfigurationBucketDefinition();
buckets3.externalBucketId = "returnProcessingBucket";
bucketsList.add(buckets3);
plannerPlanConfiguration.buckets = bucketsList;

graphClient.solutions().businessScenarios("c5d514e6c6864911ac46c720affb6e4d").planner().planConfiguration()
	.buildRequest()
	.patch(plannerPlanConfiguration);

```