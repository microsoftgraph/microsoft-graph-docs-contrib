---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ManagedAppOperation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ManagedAppOperation();
$requestBody->setOdataType('#microsoft.graph.managedAppOperation');
$requestBody->setDisplayName('Display Name value');
$requestBody->setState('State value');
$requestBody->setVersion('Version value');

$result = $graphServiceClient->deviceAppManagement()->managedAppRegistrations()->byManagedAppRegistrationId('managedAppRegistration-id')->operations()->byManagedAppOperationId('managedAppOperation-id')->patch($requestBody)->wait();

```