---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnPremisesDirectorySynchronization;
use Microsoft\Graph\Generated\Models\OnPremisesDirectorySynchronizationConfiguration;
use Microsoft\Graph\Generated\Models\OnPremisesAccidentalDeletionPrevention;
use Microsoft\Graph\Generated\Models\OnPremisesDirectorySynchronizationFeature;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnPremisesDirectorySynchronization();
$configuration = new OnPremisesDirectorySynchronizationConfiguration();
$configurationAccidentalDeletionPrevention = new OnPremisesAccidentalDeletionPrevention();
$configurationAccidentalDeletionPrevention->setSynchronizationPreventionType(new OnPremisesDirectorySynchronizationDeletionPreventionType('enabledForCount'));
$configurationAccidentalDeletionPrevention->setAlertThreshold(500);
$configuration->setAccidentalDeletionPrevention($configurationAccidentalDeletionPrevention);
$requestBody->setConfiguration($configuration);
$features = new OnPremisesDirectorySynchronizationFeature();
$features->setGroupWriteBackEnabled(true);
$requestBody->setFeatures($features);

$result = $graphServiceClient->directory()->onPremisesSynchronization()->byOnPremisesDirectorySynchronizationId('onPremisesDirectorySynchronization-id')->patch($requestBody)->wait();

```