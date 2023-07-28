---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerPlanConfiguration();
$requestBody->setOdataType('#microsoft.graph.plannerPlanConfiguration');

$requestBody->setDefaultLanguage('en-us');

$bucketsPlannerPlanConfigurationBucketDefinition1 = new PlannerPlanConfigurationBucketDefinition();
$bucketsPlannerPlanConfigurationBucketDefinition1->setExternalBucketId('deliveryBucket');


$bucketsArray []= $bucketsPlannerPlanConfigurationBucketDefinition1;
$bucketsPlannerPlanConfigurationBucketDefinition2 = new PlannerPlanConfigurationBucketDefinition();
$bucketsPlannerPlanConfigurationBucketDefinition2->setExternalBucketId('storePickupBucket');


$bucketsArray []= $bucketsPlannerPlanConfigurationBucketDefinition2;
$bucketsPlannerPlanConfigurationBucketDefinition3 = new PlannerPlanConfigurationBucketDefinition();
$bucketsPlannerPlanConfigurationBucketDefinition3->setExternalBucketId('specialOrdersBucket');


$bucketsArray []= $bucketsPlannerPlanConfigurationBucketDefinition3;
$bucketsPlannerPlanConfigurationBucketDefinition4 = new PlannerPlanConfigurationBucketDefinition();
$bucketsPlannerPlanConfigurationBucketDefinition4->setExternalBucketId('returnProcessingBucket');


$bucketsArray []= $bucketsPlannerPlanConfigurationBucketDefinition4;
$requestBody->setBuckets($bucketsArray);




$result = $graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->planConfiguration()->patch($requestBody);


```