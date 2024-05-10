---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ExternalAuthenticationMethodConfiguration;
use Microsoft\Graph\Generated\Models\AuthenticationMethodTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.externalAuthenticationMethodConfiguration');
$includeTargetsAuthenticationMethodTarget1 = new AuthenticationMethodTarget();
$includeTargetsAuthenticationMethodTarget1->setTargetType(new AuthenticationMethodTargetType('group'));
$includeTargetsAuthenticationMethodTarget1->setId('b183b746-e7db-4fa2-bafc-69ecf18850dd');
$includeTargetsAuthenticationMethodTarget1->setIsRegistrationRequired(false);
$includeTargetsArray []= $includeTargetsAuthenticationMethodTarget1;
$requestBody->setIncludeTargets($includeTargetsArray);

$requestBody->setState(new AuthenticationMethodState('enabled'));

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```