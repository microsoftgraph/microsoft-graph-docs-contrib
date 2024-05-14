---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Fido2AuthenticationMethodConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Fido2AuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.fido2AuthenticationMethodConfiguration');
$requestBody->setState(new AuthenticationMethodState('enabled'));
$requestBody->setIsAttestationEnforced(true);

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```