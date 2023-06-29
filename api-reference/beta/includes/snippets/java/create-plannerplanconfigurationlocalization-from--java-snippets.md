---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerPlanConfigurationLocalization plannerPlanConfigurationLocalization = new PlannerPlanConfigurationLocalization();
plannerPlanConfigurationLocalization.languageTag = "en-us";
plannerPlanConfigurationLocalization.planTitle = "Order Tracking";
LinkedList<PlannerPlanConfigurationBucketLocalization> bucketsList = new LinkedList<PlannerPlanConfigurationBucketLocalization>();
PlannerPlanConfigurationBucketLocalization buckets = new PlannerPlanConfigurationBucketLocalization();
buckets.externalBucketId = "deliveryBucket";
buckets.name = "Deliveries";
bucketsList.add(buckets);
PlannerPlanConfigurationBucketLocalization buckets1 = new PlannerPlanConfigurationBucketLocalization();
buckets1.externalBucketId = "storePickupBucket";
buckets1.name = "Pickup";
bucketsList.add(buckets1);
PlannerPlanConfigurationBucketLocalization buckets2 = new PlannerPlanConfigurationBucketLocalization();
buckets2.externalBucketId = "specialOrdersBucket";
buckets2.name = "Special Orders";
bucketsList.add(buckets2);
PlannerPlanConfigurationBucketLocalization buckets3 = new PlannerPlanConfigurationBucketLocalization();
buckets3.externalBucketId = "returnProcessingBucket";
buckets3.name = "Customer Returns";
bucketsList.add(buckets3);
plannerPlanConfigurationLocalization.buckets = bucketsList;

graphClient.solutions().businessScenarios("c5d514e6c6864911ac46c720affb6e4d").planner().planConfiguration().localizations()
	.buildRequest()
	.post(plannerPlanConfigurationLocalization);

```