---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OnPremisesDirectorySynchronization;
use Microsoft\Graph\Beta\Generated\Models\OnPremisesDirectorySynchronizationConfiguration;
use Microsoft\Graph\Beta\Generated\Models\OnPremisesAccidentalDeletionPrevention;
use Microsoft\Graph\Beta\Generated\Models\OnPremisesDirectorySynchronizationDeletionPreventionType;
use Microsoft\Graph\Beta\Generated\Models\OnPremisesDirectorySynchronizationFeature;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnPremisesDirectorySynchronization();
$configuration = new OnPremisesDirectorySynchronizationConfiguration();
$configurationAccidentalDeletionPrevention = new OnPremisesAccidentalDeletionPrevention();
$configurationAccidentalDeletionPrevention->setSynchronizationPreventionType(new OnPremisesDirectorySynchronizationDeletionPreventionType('enabledForCount'));
$configurationAccidentalDeletionPrevention->setAlertThreshold(500);
$configuration->setAccidentalDeletionPrevention($configurationAccidentalDeletionPrevention);
$configuration->setSynchronizationInterval(new \DateInterval('PT30M'));
$configuration->setCustomerRequestedSynchronizationInterval(new \DateInterval('PT1H'));
$requestBody->setConfiguration($configuration);
$features = new OnPremisesDirectorySynchronizationFeature();
$features->setGroupWriteBackEnabled(true);
$requestBody->setFeatures($features);

$result = $graphServiceClient->directory()->onPremisesSynchronization()->byOnPremisesDirectorySynchronizationId('onPremisesDirectorySynchronization-id')->patch($requestBody)->wait();

```