---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OnPremisesDirectorySynchronization();
$configuration = new OnPremisesDirectorySynchronizationConfiguration();
$configurationAccidentalDeletionPrevention = new OnPremisesAccidentalDeletionPrevention();
$configurationAccidentalDeletionPrevention->setSynchronizationPreventionType(new OnPremisesDirectorySynchronizationDeletionPreventionType('enabledforcount'));

$configurationAccidentalDeletionPrevention->setAlertThreshold(500);


$configuration->setAccidentalDeletionPrevention($configurationAccidentalDeletionPrevention);

$requestBody->setConfiguration($configuration);
$features = new OnPremisesDirectorySynchronizationFeature();
$features->setGroupWriteBackEnabled(true);


$requestBody->setFeatures($features);


$requestResult = $graphServiceClient->directory()->onPremisesSynchronizationById('onPremisesDirectorySynchronization-id')->patch($requestBody);


```