---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerPlanConfigurationLocalization()
request_body.@odata_type = '#microsoft.graph.plannerPlanConfigurationLocalization'

request_body.language_tag = 'en-us'

request_body.plan_title = 'Order Tracking'

buckets_planner_plan_configuration_bucket_localization1 = PlannerPlanConfigurationBucketLocalization()
buckets_planner_plan_configuration_bucket_localization1.@odata_type = 'microsoft.graph.plannerPlanConfigurationBucketLocalization'

buckets_planner_plan_configuration_bucket_localization1.external_bucket_id = 'deliveryBucket'

buckets_planner_plan_configuration_bucket_localization1.name = 'Deliveries'


bucketsArray []= bucketsPlannerPlanConfigurationBucketLocalization1;
buckets_planner_plan_configuration_bucket_localization2 = PlannerPlanConfigurationBucketLocalization()
buckets_planner_plan_configuration_bucket_localization2.@odata_type = 'microsoft.graph.plannerPlanConfigurationBucketLocalization'

buckets_planner_plan_configuration_bucket_localization2.external_bucket_id = 'storePickupBucket'

buckets_planner_plan_configuration_bucket_localization2.name = 'Pickup'


bucketsArray []= bucketsPlannerPlanConfigurationBucketLocalization2;
buckets_planner_plan_configuration_bucket_localization3 = PlannerPlanConfigurationBucketLocalization()
buckets_planner_plan_configuration_bucket_localization3.@odata_type = 'microsoft.graph.plannerPlanConfigurationBucketLocalization'

buckets_planner_plan_configuration_bucket_localization3.external_bucket_id = 'specialOrdersBucket'

buckets_planner_plan_configuration_bucket_localization3.name = 'Special Orders'


bucketsArray []= bucketsPlannerPlanConfigurationBucketLocalization3;
buckets_planner_plan_configuration_bucket_localization4 = PlannerPlanConfigurationBucketLocalization()
buckets_planner_plan_configuration_bucket_localization4.@odata_type = 'microsoft.graph.plannerPlanConfigurationBucketLocalization'

buckets_planner_plan_configuration_bucket_localization4.external_bucket_id = 'returnProcessingBucket'

buckets_planner_plan_configuration_bucket_localization4.name = 'Customer Returns'


bucketsArray []= bucketsPlannerPlanConfigurationBucketLocalization4;
request_body.buckets(bucketsArray)





result = await client.solutions.busine_scenarios.by_busine_scenario_id('businessScenario-id').planner.plan_configuration.localizations.post(request_body = request_body)


```