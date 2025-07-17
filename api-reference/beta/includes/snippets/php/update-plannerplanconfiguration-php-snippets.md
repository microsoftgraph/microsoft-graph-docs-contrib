---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PlannerPlanConfiguration;
use Microsoft\Graph\Beta\Generated\Models\PlannerPlanConfigurationBucketDefinition;
use Microsoft\Graph\Beta\Generated\Models\PlannerPlanConfigurationLocalization;
use Microsoft\Graph\Beta\Generated\Models\PlannerPlanConfigurationBucketLocalization;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerPlanConfiguration();
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

$localizationsPlannerPlanConfigurationLocalization1 = new PlannerPlanConfigurationLocalization();
$localizationsPlannerPlanConfigurationLocalization1->setId('en-us');
$localizationsPlannerPlanConfigurationLocalization1->setLanguageTag('en-us');
$localizationsPlannerPlanConfigurationLocalization1->setPlanTitle('Order Tracking');
$bucketsPlannerPlanConfigurationBucketLocalization1 = new PlannerPlanConfigurationBucketLocalization();
$bucketsPlannerPlanConfigurationBucketLocalization1->setExternalBucketId('deliveryBucket');
$bucketsPlannerPlanConfigurationBucketLocalization1->setName('Deliveries');
$bucketsArray []= $bucketsPlannerPlanConfigurationBucketLocalization1;
$bucketsPlannerPlanConfigurationBucketLocalization2 = new PlannerPlanConfigurationBucketLocalization();
$bucketsPlannerPlanConfigurationBucketLocalization2->setExternalBucketId('storePickupBucket');
$bucketsPlannerPlanConfigurationBucketLocalization2->setName('Pickup');
$bucketsArray []= $bucketsPlannerPlanConfigurationBucketLocalization2;
$bucketsPlannerPlanConfigurationBucketLocalization3 = new PlannerPlanConfigurationBucketLocalization();
$bucketsPlannerPlanConfigurationBucketLocalization3->setExternalBucketId('specialOrdersBucket');
$bucketsPlannerPlanConfigurationBucketLocalization3->setName('Special Orders');
$bucketsArray []= $bucketsPlannerPlanConfigurationBucketLocalization3;
$bucketsPlannerPlanConfigurationBucketLocalization4 = new PlannerPlanConfigurationBucketLocalization();
$bucketsPlannerPlanConfigurationBucketLocalization4->setExternalBucketId('returnProcessingBucket');
$bucketsPlannerPlanConfigurationBucketLocalization4->setName('Customer Returns');
$bucketsArray []= $bucketsPlannerPlanConfigurationBucketLocalization4;
$localizationsPlannerPlanConfigurationLocalization1->setBuckets($bucketsArray);

$localizationsArray []= $localizationsPlannerPlanConfigurationLocalization1;
$localizationsPlannerPlanConfigurationLocalization2 = new PlannerPlanConfigurationLocalization();
$localizationsPlannerPlanConfigurationLocalization2->setId('es-es');
$localizationsPlannerPlanConfigurationLocalization2->setLanguageTag('es-es');
$localizationsPlannerPlanConfigurationLocalization2->setPlanTitle('Seguimiento de pedidos');
$bucketsPlannerPlanConfigurationBucketLocalization1 = new PlannerPlanConfigurationBucketLocalization();
$bucketsPlannerPlanConfigurationBucketLocalization1->setExternalBucketId('deliveryBucket');
$bucketsPlannerPlanConfigurationBucketLocalization1->setName('Entregas');
$bucketsArray []= $bucketsPlannerPlanConfigurationBucketLocalization1;
$bucketsPlannerPlanConfigurationBucketLocalization2 = new PlannerPlanConfigurationBucketLocalization();
$bucketsPlannerPlanConfigurationBucketLocalization2->setExternalBucketId('storePickupBucket');
$bucketsPlannerPlanConfigurationBucketLocalization2->setName('Recogida');
$bucketsArray []= $bucketsPlannerPlanConfigurationBucketLocalization2;
$bucketsPlannerPlanConfigurationBucketLocalization3 = new PlannerPlanConfigurationBucketLocalization();
$bucketsPlannerPlanConfigurationBucketLocalization3->setExternalBucketId('specialOrdersBucket');
$bucketsPlannerPlanConfigurationBucketLocalization3->setName('Pedidos especiales');
$bucketsArray []= $bucketsPlannerPlanConfigurationBucketLocalization3;
$bucketsPlannerPlanConfigurationBucketLocalization4 = new PlannerPlanConfigurationBucketLocalization();
$bucketsPlannerPlanConfigurationBucketLocalization4->setExternalBucketId('specialOrdersBucket');
$bucketsPlannerPlanConfigurationBucketLocalization4->setName('Devoluciones de clientes');
$bucketsArray []= $bucketsPlannerPlanConfigurationBucketLocalization4;
$localizationsPlannerPlanConfigurationLocalization2->setBuckets($bucketsArray);

$localizationsArray []= $localizationsPlannerPlanConfigurationLocalization2;
$requestBody->setLocalizations($localizationsArray);


$result = $graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->planConfiguration()->patch($requestBody)->wait();

```