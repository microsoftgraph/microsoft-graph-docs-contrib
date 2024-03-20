---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ManagedAppOperation();
$requestBody->setOdataType('#microsoft.graph.managedAppOperation');
$requestBody->setDisplayName('Display Name value');
$requestBody->setState('State value');
$requestBody->setVersion('Version value');

$result = $graphServiceClient->deviceAppManagement()->managedAppRegistrations()->byManagedAppRegistrationId('managedAppRegistration-id')->operations()->post($requestBody)->wait();

```