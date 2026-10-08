---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AuthenticationMethodConfiguration;
use Microsoft\Graph\Generated\Models\AuthenticationMethodState;
use Microsoft\Graph\Generated\Models\ExcludeTarget;
use Microsoft\Graph\Generated\Models\AuthenticationMethodTargetType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationMethodConfiguration();
$requestBody->setState(new AuthenticationMethodState('disabled'));
$excludeTargetsExcludeTarget1 = new ExcludeTarget();
$excludeTargetsExcludeTarget1->setId('10051f25-53a8-4f81-8a0b-9fc22887e640');
$excludeTargetsExcludeTarget1->setTargetType(new AuthenticationMethodTargetType('group'));
$excludeTargetsArray []= $excludeTargetsExcludeTarget1;
$excludeTargetsExcludeTarget2 = new ExcludeTarget();
$excludeTargetsExcludeTarget2->setId('e2c2244f-66cc-4d5b-9042-686f9fa42986');
$excludeTargetsExcludeTarget2->setTargetType(new AuthenticationMethodTargetType('group'));
$excludeTargetsArray []= $excludeTargetsExcludeTarget2;
$requestBody->setExcludeTargets($excludeTargetsArray);


$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```