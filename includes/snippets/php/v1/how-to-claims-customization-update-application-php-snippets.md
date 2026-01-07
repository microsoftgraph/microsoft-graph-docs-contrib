---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Application;
use Microsoft\Graph\Generated\Models\ApiApplication;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$api = new ApiApplication();
$api->setAcceptMappedClaims(true);
$api->setRequestedAccessTokenVersion(2);
$requestBody->setApi($api);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```