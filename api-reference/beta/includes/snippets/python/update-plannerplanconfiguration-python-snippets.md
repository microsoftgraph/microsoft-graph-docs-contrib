---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerPlanConfiguration()
request_body.@odata_type = '#microsoft.graph.plannerPlanConfiguration'

request_body.default_language = 'en-us'

buckets_planner_plan_configuration_bucket_definition1 = PlannerPlanConfigurationBucketDefinition()
buckets_planner_plan_configuration_bucket_definition1.external_bucket_id = 'deliveryBucket'


bucketsArray []= bucketsPlannerPlanConfigurationBucketDefinition1;
buckets_planner_plan_configuration_bucket_definition2 = PlannerPlanConfigurationBucketDefinition()
buckets_planner_plan_configuration_bucket_definition2.external_bucket_id = 'storePickupBucket'


bucketsArray []= bucketsPlannerPlanConfigurationBucketDefinition2;
buckets_planner_plan_configuration_bucket_definition3 = PlannerPlanConfigurationBucketDefinition()
buckets_planner_plan_configuration_bucket_definition3.external_bucket_id = 'specialOrdersBucket'


bucketsArray []= bucketsPlannerPlanConfigurationBucketDefinition3;
buckets_planner_plan_configuration_bucket_definition4 = PlannerPlanConfigurationBucketDefinition()
buckets_planner_plan_configuration_bucket_definition4.external_bucket_id = 'returnProcessingBucket'


bucketsArray []= bucketsPlannerPlanConfigurationBucketDefinition4;
request_body.buckets(bucketsArray)





result = await client.solutions.busine_scenarios.by_busine_scenario_id('businessScenario-id').planner.plan_configuration.patch(request_body = request_body)


```