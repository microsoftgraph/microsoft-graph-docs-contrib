---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerPlanConfigurationLocalization();
$requestBody->setOdataType('#microsoft.graph.plannerPlanConfigurationLocalization');

$requestBody->setLanguageTag('en-us');

$requestBody->setPlanTitle('Order Tracking');

$bucketsPlannerPlanConfigurationBucketLocalization1 = new PlannerPlanConfigurationBucketLocalization();
$bucketsPlannerPlanConfigurationBucketLocalization1->setOdataType('microsoft.graph.plannerPlanConfigurationBucketLocalization');

$bucketsPlannerPlanConfigurationBucketLocalization1->setExternalBucketId('deliveryBucket');

$bucketsPlannerPlanConfigurationBucketLocalization1->setName('Deliveries');


$bucketsArray []= $bucketsPlannerPlanConfigurationBucketLocalization1;
$bucketsPlannerPlanConfigurationBucketLocalization2 = new PlannerPlanConfigurationBucketLocalization();
$bucketsPlannerPlanConfigurationBucketLocalization2->setOdataType('microsoft.graph.plannerPlanConfigurationBucketLocalization');

$bucketsPlannerPlanConfigurationBucketLocalization2->setExternalBucketId('storePickupBucket');

$bucketsPlannerPlanConfigurationBucketLocalization2->setName('Pickup');


$bucketsArray []= $bucketsPlannerPlanConfigurationBucketLocalization2;
$bucketsPlannerPlanConfigurationBucketLocalization3 = new PlannerPlanConfigurationBucketLocalization();
$bucketsPlannerPlanConfigurationBucketLocalization3->setOdataType('microsoft.graph.plannerPlanConfigurationBucketLocalization');

$bucketsPlannerPlanConfigurationBucketLocalization3->setExternalBucketId('specialOrdersBucket');

$bucketsPlannerPlanConfigurationBucketLocalization3->setName('Special Orders');


$bucketsArray []= $bucketsPlannerPlanConfigurationBucketLocalization3;
$bucketsPlannerPlanConfigurationBucketLocalization4 = new PlannerPlanConfigurationBucketLocalization();
$bucketsPlannerPlanConfigurationBucketLocalization4->setOdataType('microsoft.graph.plannerPlanConfigurationBucketLocalization');

$bucketsPlannerPlanConfigurationBucketLocalization4->setExternalBucketId('returnProcessingBucket');

$bucketsPlannerPlanConfigurationBucketLocalization4->setName('Customer Returns');


$bucketsArray []= $bucketsPlannerPlanConfigurationBucketLocalization4;
$requestBody->setBuckets($bucketsArray);




$result = $graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->planConfiguration()->localizations()->post($requestBody);


```