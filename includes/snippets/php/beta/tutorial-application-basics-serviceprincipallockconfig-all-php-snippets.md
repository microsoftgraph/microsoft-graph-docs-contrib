---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Application;
use Microsoft\Graph\Beta\Generated\Models\ServicePrincipalLockConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$servicePrincipalLockConfiguration = new ServicePrincipalLockConfiguration();
$servicePrincipalLockConfiguration->setIsEnabled(true);
$servicePrincipalLockConfiguration->setAllProperties(true);
$requestBody->setServicePrincipalLockConfiguration($servicePrincipalLockConfiguration);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```