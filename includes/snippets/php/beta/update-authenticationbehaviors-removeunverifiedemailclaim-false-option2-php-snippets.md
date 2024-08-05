---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Application;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationBehaviors;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$authenticationBehaviors = new AuthenticationBehaviors();
$authenticationBehaviors->setRemoveUnverifiedEmailClaim(false);
$requestBody->setAuthenticationBehaviors($authenticationBehaviors);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```