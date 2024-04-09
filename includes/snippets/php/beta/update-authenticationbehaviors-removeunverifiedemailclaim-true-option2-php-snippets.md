---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Application;
use Microsoft\Graph\Generated\Models\AuthenticationBehaviors;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$authenticationBehaviors = new AuthenticationBehaviors();
$authenticationBehaviors->setRemoveUnverifiedEmailClaim(true);
$requestBody->setAuthenticationBehaviors($authenticationBehaviors);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```